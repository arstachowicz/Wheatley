VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPRESS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public fileName As String
Public sPartFile As String
Public pageNum As Long
Public hyTop As String
Public hyBot As String ' used to store hyperlinks to PDFs of top and bottom parts
Public lTop As String
Public lBot As String

Private Sub cmdPicBot_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryPRESS"

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
            lBot = Nz(![partBot])
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

Private Sub cmdPicTop_Click()
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
            lTop = Nz(![partTop])
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

Private Sub cmdSETUP_Click()
    Call pdfOpen(fileName, pageNum)
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    txtTOP.Caption = ""
    txtBOTTOM.Caption = ""
    txtTOOL.RowSource = ""
    txtPART.Value = ""
    cmdSETUP.Enabled = False
    txtPART.SetFocus
    
    With cmdPicBot
        .Enabled = False
        .Visible = False
    End With
    
    With cmdPicTop
        .Enabled = False
        .Visible = False
    End With

End Sub

Private Sub Command834_Click()

    DoCmd.OpenForm "fmPRESS_NEW", acNormal, , , , acDialog
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Press Fixtures"
    Call cmdUndo_Click

End Sub

Private Sub Label1042_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Label1042_Click()
    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog
End Sub

Private Sub txtPart_AfterUpdate()

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rst As DAO.Recordset
Dim sID As String
Dim sEntry As String
Dim sPDF As String
Dim qryName As String
Dim partPRESS As String
Dim top As String
Dim bottom As String
Dim tool As String
Dim sPn As String
Dim sPR As String
Dim sN As String
Dim sL As String
Dim sIn As String

qryName = "qryPRESS"

sPn = "qryPARTNUM_ALL"
sPR = "tblPRESS"
sL = " LEFT JOIN "
sN = "n/a"
sIn = " INNER JOIN "

'reset hyperlinks
    hyTop = ""
    hyBot = ""

Set db = CurrentDb
Set qdf = db.QueryDefs(qryName)

If IsNull(Trim(txtPART)) = False Then
    On Error GoTo absentTalonPartNum
    sEntry = sqlStr(txtPART)
            
    qdf.SQL = "SELECT TOP 1 tblPARTNUM.partNum, refREV.rev, " & sPR & ".partTop, " & sPn & ".partNumber AS topStr, " & _
                        sPR & ".partBot, " & sPn & "_1.partNumber AS botStr, " & sPR & ".ID, " & sPR & ".fileName, " & sPR & ".filePage " & vbCr & _
                "FROM (((" & sPR & sL & "refREV ON " & sPR & ".rev = refREV.ID)" & sIn & "tblPARTNUM ON " & sPR & ".partNum = tblPARTNUM.ID)" & _
                        sL & sPn & " ON " & sPR & ".partTop = " & sPn & ".uniqID)" & sL & sPn & " AS " & sPn & "_1 ON " & sPR & ".partBot = " & sPn & "_1.uniqID " & vbCr & _
                "WHERE (((tblPARTNUM.partNum) = " & sEntry & ")) " & vbCr & _
                "ORDER BY refREV.rev DESC;"
                
    Set rst = qdf.OpenRecordset
    
    With rst
        If (.RecordCount = 0) Then
            MsgBox ("There are no assemblies entered for this part number.")
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            sID = ![ID]
            lTop = Nz(![partTop])
            lBot = Nz(![partBot])
            top = Nz(![topStr], sN)
            bottom = Nz(![BOTStr], sN)
            tool = "SELECT uTOOL.tool, " & sPn & ".partNumber " & vbCr & _
                "FROM (select id, partTool1 as tool from " & sPR & " Union select id, partTool2 as tool from " & sPR & _
                        " Union select id, partTool3 as tool from " & sPR & ")  AS uTOOL" & sIn & sPn & " ON uTOOL.tool = " & sPn & ".uniqID " & vbCr & _
                "WHERE (((uTOOL.ID) = " & sID & ")) " & vbCr & _
                "ORDER BY " & sPn & ".partNumber;"

            sPDF = Nz(![fileName], sN)

            'Checks if a process layout was made for that part number
            If (sPDF <> sN) And (sPDF <> "") Then
                cmdSETUP.Enabled = True
                fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sPDF & ".pdf"
                pageNum = Nz(![filePage], 1)
            Else:
                cmdSETUP.Enabled = False
            End If
            
            'checks if an individual pdf is available for the top/bottom parts
            On Error GoTo pdfErr:
                hyBot = indPDF0107(lBot, True)
                hyTop = indPDF0107(lTop, True)
                
                If (hyBot <> "") And (IsNull(hyBot) = False) Then
                    cmdPicBot.Enabled = True
                    cmdPicBot.Visible = True
                End If

                If (hyTop <> "") And (IsNull(hyTop) = False) Then
                    cmdPicTop.Enabled = True
                    cmdPicTop.Visible = True
                End If
        End If
    End With
    
captFill:
    'Populate fields based on first entry
    txtTOP.Caption = top
    txtBOTTOM.Caption = bottom
    txtTOOL.RowSource = tool
    
    'close open records
    qdf.Close
    rst.Close
    db.Close

End If

errExit:
    Exit Sub

absentTalonPartNum:
    MsgBox "No information has been entered for this part number."
    Resume errExit

pdfErr:
    MsgBox "There was an error when searching for individual PDF's."
    Resume captFill
    
End Sub



