VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmLEAKCHECK_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim lPart As Long
Dim lRev As Long
Dim sPart As String
Dim sRev As String
Dim sTbl As String
Dim sQry As String
Dim leakID As Long

Private Sub ckRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbBOTTOM_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmbMANI1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10, 19)
End Sub

Private Sub cmbMANI2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10, 19)
End Sub

Private Sub cmbMISC1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmbMISC2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmbMISC3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmbRev_AfterUpdate()
    Call dupCheck
End Sub

Private Sub cmbTALON_AfterUpdate()
    Call dupCheck 'checks if info has been entered previously
End Sub

Private Sub dupCheck()

    sTbl = "tblLEAK_CHECK"
    sQry = "dupLEAK_CHECK"
    
    If (IsNull(cmbRev) = False) And (IsNull(cmbTALON) = False) Then
        Call revPop(sQry, sTbl, Me.cmbTALON, Me.cmbRev, Me.txtFILE)
    End If
    
End Sub

Private Sub cmbTOP_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmdEXIT_Click()
Dim formName As String
    formName = "fmLEAKCHECK_NEW"
    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
End Sub

Private Sub Command317_Click()

    Dim ctrl As Control
    
    'top and bottom
    Dim ssTop As String
    Dim sBottom As String
    
    'part number and PDF info
    Dim lPart As Long
    Dim lRev As Long
    Dim pdfPage As Long
    
    'manifold
    Dim sMani1 As String
    Dim sMani2 As String
    
    'miscellaneous items
    Dim sMisc1 As String
    Dim sMisc2 As String
    Dim sMisc3 As String
    Dim pdfFile As String
    Dim sPath As String
    Dim sValues As String
    Dim sP As String
    Dim sN As String
    
    sP = ", "
    sN = "Null"
    Set ctrl = Me.Controls!cmbTALON

    lPart = Nz(cmbTALON)
    lRev = Nz(cmbRev, 1)
    
    'checks if user entered "pdf" into the file field and removes this before submitting
    pdfFile = pdfPathCK(pdfFile)
    pdfFile = sqlStr(txtFILE)
    pdfPage = Nz(txtPage, 1)
    
    ssTop = sqlStr(cmbTOP)
    sBottom = sqlStr(cmbBOTTOM)
    sMani1 = sqlStr(cmbMani1)
    sMani2 = sqlStr(cmbMANI2)
    
    sMisc1 = sqlStr(cmbMisc1)
    sMisc2 = sqlStr(cmbMisc2)
    sMisc3 = sqlStr(cmbMisc3)
    
    
    sValues = lPart & sP & lRev & sP & ssTop & sP & sBottom & sP & sMani1 & sP & sMani2 & sP & _
                sMisc1 & sP & sMisc2 & sP & sMisc3 & sP & sN & sP & sN & sP & _
                pdfFile & sP & pdfPage & sP & sN & sP & _
                sN & sP & False & sP & False
    'enter all info into the EP table
    Call dupPartEntry(sQry, ctrl, sTbl, sValues, "fmLEAKCHECK_EDIT")
    Call Command318_Click
    
End Sub

Private Sub Command318_Click()

'clears all information in textboxes
    cmbRev = Null
    
    cmbTOP = Null
    cmbBOTTOM = Null
    
    cmbMani1 = Null
    cmbMANI2 = Null
    
    cmbMisc1 = Null
    cmbMisc2 = Null
    cmbMisc3 = Null
    
    txtFILE = Null
    txtPage = Null
    
    With cmbTALON
        .Value = Null
        .SetFocus
    End With

End Sub

Private Sub Form_Load()
sTbl = "tblLEAK_CHECK"

    If Not IsNull(Me.OpenArgs) Then 'checks for passed conditions from other forms
        leakID = CLng(Me.OpenArgs)
        Call condFormOpenEP(leakID)
        cmdEXIT.Visible = True
    Else:
        Call Command318_Click
        cmdEXIT.Visible = False
    End If
    
End Sub
Public Sub condFormOpenEP(leakID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset

Dim sLeak As String
Dim i As Long
Dim sCol As String

    sLeak = "tblLEAK_CHECK"

Set db = CurrentDb
Set rs = db.OpenRecordset(sLeak)

If (leakID <> 0) Then

    cmbTALON.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !autoID = leakID Then
                
                'Pull table information
                    cmbTALON.Value = !partNum
                    cmbTOP.Value = Nz(!Topnum)
                    cmbBOTTOM.Value = Nz(!bottomNum)

                'pull manifold info
                    For i = 1 To 2
                        sCol = Nz(.Fields("maniNum" & i))
                        Me.Controls("cmbMANI" & i).Value = sCol
                    Next
                
                'pull MISC info
                    For i = 1 To 3
                        sCol = Nz(.Fields("miscNum" & i))
                        Me.Controls("cmbMISC" & i).Value = sCol
                    Next
                    
                'file and pages
                    txtFILE = Nz(!processlayout)
                    txtPage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    cmbRev.SetFocus
Else:
    cmbTALON.Enabled = False
End If

    db.Close

End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)

    Call notListedTal(Me, NewData, Response)
    
End Sub

