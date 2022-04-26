VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmLEAKCHECK"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim fileName As String
Dim sPartFile As String
Dim pageNum As Long
Dim lTop As String
Dim lBot As String
Dim hyTop As String
Dim hyBot As String

Private Sub cmdPicBot_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryLEAK_CHECK"

'opens individual part's PDF if available
'checks variable and reassigns if missing
    If (IsNull(hyBot) = False) And (hyBot <> "") Then
        Call pdfOpen(hyBot, 1)
    Else:
        Set db = CurrentDb
        Set qdf = db.QueryDefs(qryName)
        Set rs = qdf.OpenRecordset
        
        With rs
            .MoveFirst
            lBot = Nz(![BOTStr])
            hyBot = indPDF0107(lBot, True)
            If (IsNull(hyBot) = False) And (hyBot <> "") Then
                Call pdfOpen(hyBot, 1)
            End If
            .Close
        End With
        qdf.Close
        db.Close
    End If
End Sub

Private Sub cmdSETUP_Click()
    Call pdfOpen(fileName, pageNum)
End Sub

Private Sub cmdTopInfo_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryPRESS"

'opens individual part's PDF if available
'checks variable and reassigns if missing
    If (IsNull(hyTop) = False) And (hyTop <> "") Then
        Call pdfOpen(hyTop, 1)
    Else:
        Set db = CurrentDb
        Set qdf = db.QueryDefs(qryName)
        Set rs = qdf.OpenRecordset
        
        With rs
            .MoveFirst
            lTop = Nz(![topStr])
            hyTop = indPDF0107(lTop, True)
            If (IsNull(hyTop) = False) And (hyTop <> "") Then
                Call pdfOpen(hyTop, 1)
            End If
            .Close
        End With
        qdf.Close
        db.Close
    End If
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    txtTOP.Caption = ""
    txtBOTTOM.Caption = ""
    txtMANI.RowSource = ""
    
    cmdSETUP.Enabled = False
    
    With txtPART
        .Value = Null
        .SetFocus
    End With

End Sub

Private Sub Command834_Click()

    DoCmd.OpenForm "fmLEAKCHECK_NEW", acNormal, , , , acDialog
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Leak Check Fixtures"
    Call cmdUndo_Click

End Sub


Private Sub Label986_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Label986_Click()
    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog
End Sub

Private Sub txtPart_AfterUpdate()

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rst As DAO.Recordset
Dim lID As Long
Dim top As String
Dim bottom As String
Dim mani As String
Dim partLeak As String
Dim qryName As String

'for building the sql
Dim sP7 As String
Dim sL As String
Dim sN As String
Dim sA As String
Dim sLt As String
Dim sPn As String
Dim sID As String

qryName = "qryLEAK_CHECK"
sL = "tblLEAK_CHECK"
sP7 = "qryPARTNUM_ALL"

sLt = " LEFT JOIN "
sA = " AS "
sN = "n/a"
sPn = ".partNumber"
sID = ".uniqID"


partLeak = Nz(Trim(txtPART.Value))

Set db = CurrentDb
Set qdf = db.QueryDefs(qryName)

If (IsNull(partLeak) = False) Then
    On Error GoTo absentTalonPartNum
    lID = DLookup("[ID]", "qryPARTNUM", "[partNum] = '" & partLeak & "'")
    
    qdf.SQL = "SELECT TOP 1 " & sL & ".topNum, " & sP7 & sPn & sA & "topStr, " & sL & ".bottomNum, " & sP7 & "_1" & sPn & sA & "botStr, " & _
                                sL & ".maniNum1, " & sP7 & "_2" & sPn & sA & "manStr1, " & sL & ".maniNum2, " & sP7 & "_3" & sPn & sA & "manStr2, " & _
                                sL & ".processLayout, " & sL & ".filePage " & vbCr & _
                "FROM ((((" & sL & sLt & "refREV ON " & sL & ".rev = refREV.ID)" & sLt & sP7 & " ON " & sL & ".topNum = " & sP7 & sID & ")" & _
                              sLt & sP7 & sA & sP7 & "_1 ON " & sL & ".bottomNum = " & sP7 & "_1" & sID & ")" & sLt & sP7 & sA & sP7 & "_2 ON " & _
                              sL & ".maniNum1 = " & sP7 & "_2" & sID & ")" & sLt & sP7 & sA & sP7 & "_3 ON " & sL & ".maniNum2 = " & sP7 & "_3" & sID & vbCr & _
                " WHERE (((" & sL & ".partNum) = " & lID & ") And ((" & sL & ".obsolete) = False) And ((" & sL & ".[R&D]) = False)) " & vbCr & _
                "ORDER BY refREV.rev DESC;"

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            lTop = Nz(![Topnum], sN)
            lBot = Nz(![bottomNum], sN)
            top = Nz(![topStr], sN)
            bottom = Nz(![BOTStr], sN)
            mani = Nz(![manStr1], sN) & ";" & Nz(![manStr2])

            'Checks if a process layout was made for that part number
            If IsNull(![processlayout]) = False Then
                cmdSETUP.Enabled = True
                fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & ![processlayout] & ".pdf"
                    
                    If IsNull(![filePage]) = False Then
                        pageNum = ![filePage]
                    Else:
                        pageNum = 1
                    End If
            
            Else:
                cmdSETUP.Enabled = False
            End If
                   
            'checks if an individual pdf is available for the top/bottom parts
            hyTop = indPDF0107(lTop, True)
            hyBot = indPDF0107(lBot, True)
            If (hyTop <> "") And (IsNull(hyTop) = False) Then
                cmdTopInfo.Enabled = True
                cmdTopInfo.Visible = True
            End If
                
            If (hyBot <> "") And (IsNull(hyBot) = False) Then
                cmdPicBot.Enabled = True
                cmdPicBot.Visible = True
            End If
                         
        End If
        .Close
    End With
    
captionBuild:
    'Populate fields based on first entry
    txtTOP.Caption = top
    txtBOTTOM.Caption = bottom
    txtMANI.RowSource = mani
    
    'close items
    qdf.Close
    db.Close
    
End If

errExit:
    Exit Sub

absentTalonPartNum:
    MsgBox "No information has been entered for this part number."
    Resume errExit


End Sub

