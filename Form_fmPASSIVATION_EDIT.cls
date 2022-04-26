VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPASSIVATION_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public passID As Long
Public tbl As String

Private Sub List651_DblClick(Cancel As Integer)
Dim searchID As Long

    searchID = CLng(Nz(List651, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmPASSIVATION_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
    
End Sub

Private Sub tglObso_Click()
    Call tglCapt(Me.ActiveControl, 2)
End Sub

Private Sub tglRD_Click()
    Call tglCapt(Me.ActiveControl, 1)
End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
Private Sub tglObso_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbFix_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 8)
End Sub

Private Sub cmbflange1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmbflange2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmbflange3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmdUndo_Click()
    
    Call List651_AfterUpdate
    
End Sub

Private Sub cmdUpdate_Click()
    Dim db As DAO.Database
    Dim sSQL As String
    
    'part number and PDF info
    Dim pNum As Long
    Dim revN As Long
    Dim sFix As String
    Dim sMani1 As String
    Dim sMani2 As String
    Dim sMani3 As String
    Dim pdfPage As Long
    Dim pdfFile As String
    Dim bObso As Boolean
    Dim bRD As Boolean
    Dim sNote As String
    
    Dim lCounter As Long 'for adjusting
    Dim sP As String

    Set db = CurrentDb
    
    sP = ", "
    tbl = "tblPASSIVATE"
    
    passID = CLng(List651.Value)
    pNum = CLng(Nz(cmbTALON))
    revN = CLng(Nz(cmbRev, 1))
    
    pdfFile = sqlStr(txtFILE)
    pdfPage = CLng(Nz(txtPage, 1))
    
    'checks if user entered "pdf" into the file field and removes this before submitting
    If Right(pdfFile, 4) = "pdf'" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 4)
    ElseIf Right(pdfFile, 5) = ".pdf'" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 5)
    End If
    
    sFix = sqlStr(cmbFix)
    sMani1 = sqlStr(cmbFlange1)
    sMani2 = sqlStr(cmbFLANGE2)
    sMani3 = sqlStr(cmbFLANGE3)
    sNote = sqlStr(txtNotes)
    
    bObso = tglObso.Value
    bRD = tglRD.Value
    Call tglCapt(Me.tglRD, 1)
    Call tglCapt(Me.tglObso, 2)

    'enter all info into the EP table
    'update the basic EP table
        sSQL = "Update " & tbl & vbCr & _
                " SET [partNum] = " & pNum & sP & _
                    "[Rev] = " & revN & sP & _
                    "[fixtureNum] = " & sFix & sP & _
                    "[maniNum] = " & sMani1 & sP & _
                    "[maniNum1] = " & sMani2 & sP & _
                    "[maniNum2] = " & sMani3 & sP & _
                    "[fileName] = " & pdfFile & sP & _
                    "[pageNum] = " & pdfPage & sP & _
                    "[obsolete] = " & bObso & sP & _
                    "[notes] = " & sNote & sP & _
                    "[R&D] = " & tglRD & vbCr & _
                " WHERE [ID] = " & passID & ";"
        
    With db
        .Execute sSQL, dbFailOnError
        .Close
    End With
    
    MsgBox "Successfully updated!"
    List651.Requery
    
End Sub

Private Sub cmdView_Click()
Dim sName As String
Dim lPg As Long

    sName = sqlStr(txtFILE)
    lPg = Nz(txtPage, 1)
    
    If (sName <> "Null") Then
        Call pdfOpen(sName, lPg)
    End If
    
End Sub

Private Sub Form_Load()
    cmbTALON = Null
    cmbRev = Null

    cmbFix = Null
    cmbFlange1 = Null
    cmbFLANGE2 = Null
    cmbFLANGE3 = Null
    txtNotes = Null
    txtFILE = Null
    txtPage = Null
    
    tglObso = False
    tglRD = False
    Call tglCapt(Me.tglRD, 1)
    Call tglCapt(Me.tglObso, 2)
                
End Sub

Private Sub List651_AfterUpdate()
    Dim db As DAO.Database
    Dim rs As DAO.Recordset
    Dim tbl As String
    
    tbl = "tblPASSIVATE"
    passID = CLng(Nz(Me.List651, 0))

    Set db = CurrentDb
    Set rs = db.OpenRecordset(tbl)
 
    With rs
        .MoveFirst
        Do While Not .EOF
            If (!ID = passID) Then
                cmbTALON = !partNum
                cmbRev = !Rev
                cmbFlange1 = ![maniNum]
                cmbFLANGE2 = ![maniNum1]
                cmbFLANGE3 = ![maniNum2]
                cmbFix = ![fixtureNum]
                txtFILE = !fileName
                txtPage = !pageNum
                txtNotes = ![Notes]
                tglObso = !obsolete
                tglRD = ![R&D]
                Call tglCapt(Me.tglRD, 1)
                Call tglCapt(Me.tglObso, 2)
                Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    If (IsNull(txtFILE) = False) Then
        cmdView.Enabled = True
    Else:
        cmdView.Enabled = False
    End If
    
    db.Close
    
End Sub


