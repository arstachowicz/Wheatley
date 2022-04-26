VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmLEAKCHECK_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public leakID As Long
Public tbl As String

Private Sub ckObso_Click()
    Call tglCapt(Me.ckObso, 2)
End Sub

Private Sub ckObso_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckRD_Click()
    Call tglCapt(Me.ckRD, 1)
End Sub

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
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMISC2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMISC3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbRev_AfterUpdate()
    If (IsNull(cmbRev) = False) And (IsNull(cmbTALON) = False) Then
        Call dupCheck
    End If
End Sub

Private Sub cmbTALON_AfterUpdate()
    If (IsNull(cmbRev) = False) And (IsNull(cmbTALON) = False) Then
        Call dupCheck
    End If
End Sub
Private Sub dupCheck()
Dim sTal As Control
Dim sRev As Control
Dim sFile As Control
    
    Set sTal = cmbTALON
    Set sRev = cmbRev
    Set sFile = txtFILE

    Call revPop("dupLEAK_CHECK", tbl, sTal, sRev, txtFILE)
    
End Sub

Private Sub cmbTOP_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 10)
End Sub

Private Sub cmdUndo_Click()
    
    Call List651_AfterUpdate
    List651.Requery
    
End Sub

Private Sub cmdUpdate_Click()
    Dim db As DAO.Database
    Dim sSQL As String 'update SQL
    Dim sTop1 As String 'top and bottom as long
    Dim sBottom As String
    
    'manifolds
    Dim sMani1 As String
    Dim sMani2 As String
    
    'other pieces
    Dim sMisc1 As String
    Dim sMisc2 As String
    Dim sMisc3 As String
    
    Dim pNum As Long
    Dim revN As Long
    
    Dim pdfPage As Long 'part number and PDF info
    Dim lCounter As Long 'for adjusting
    Dim pdfFile As String
    Dim sNotes As String
    
    Dim bObso As Boolean
    Dim bRD As Boolean
    Dim sP As String
 
    Set db = CurrentDb
    
    sP = ", "
    pNum = Nz(cmbTALON, 0)
    
    If (IsNull(List651) = False) And (pNum <> 0) Then
        leakID = List651.Value
        revN = Nz(cmbRev, 1)
        
        pdfFile = sqlStr(txtFILE)
        pdfPage = Nz(txtPage, 1)
        
        'checks if user entered "pdf" into the file field and removes this before submitting
        If Right(pdfFile, 4) = "pdf'" Then
            lCounter = Len(pdfFile)
            pdfFile = Left(pdfFile, lCounter - 4)
        ElseIf Right(pdfFile, 5) = ".pdf'" Then
            lCounter = Len(pdfFile)
            pdfFile = Left(pdfFile, lCounter - 5)
        End If
        
        sTop1 = sqlStr(cmbTOP)
        sBottom = sqlStr(cmbBOTTOM)
        sMani1 = sqlStr(cmbMani1)
        sMani2 = sqlStr(cmbMANI2)
        sMisc1 = sqlStr(cmbMisc1)
        sMisc2 = sqlStr(cmbMisc2)
        sMisc3 = sqlStr(cmbMisc3)
        sNotes = sqlStr(txtNotes)
        bObso = ckObso
        bRD = ckRD
    
        'enter all info into the EP table
        'update the basic EP table
            sSQL = "Update " & tbl & vbCr & _
                    " SET [partNum] = " & CStr(pNum) & sP & _
                        "[Rev] = " & CStr(revN) & sP & _
                        "[topNum] = " & sTop1 & sP & _
                        "[bottomNum] = " & sBottom & sP & _
                        "[maniNum1] = " & sMani1 & sP & _
                        "[maniNum2] = " & sMani2 & sP & _
                        "[miscNum1] = " & sMisc1 & sP & _
                        "[miscNum2] = " & sMisc2 & sP & _
                        "[miscNum3] = " & sMisc3 & sP & _
                        "[processLayout] = " & pdfFile & sP & _
                        "[filePage] = " & CStr(pdfPage) & sP & _
                        "[R&D] = " & CStr(bRD) & sP & _
                        "[obsolete] = " & CStr(bObso) & sP & _
                        "[Notes] = " & sNotes & vbCr & _
                    " WHERE [autoID] = " & CStr(leakID) & ";"
        db.Execute sSQL, dbFailOnError
        
        MsgBox "Successfully updated!"
        List651.Requery
    End If
    
    db.Close
    
End Sub
     
Private Sub List651_AfterUpdate()

Dim db As DAO.Database
Dim rs As DAO.Recordset
        
    tbl = "tblLEAK_CHECK"
    Set db = CurrentDb
    Set rs = db.OpenRecordset(tbl)
     
    If (IsNull(List651) = False) Then
        leakID = CLng(List651)
    
        With rs
            .MoveFirst
            Do While Not .EOF
                If (!autoID = leakID) Then
                    cmbTALON = !partNum
                    cmbRev = !Rev
                    cmbTOP = !Topnum
                    cmbBOTTOM = !bottomNum
                    cmbMani1 = !maniNum1
                    cmbMANI2 = !maniNum2
                    cmbMisc1 = !miscNum1
                    cmbMisc2 = !miscNum2
                    cmbMisc3 = !miscNum3
                    txtNotes = !Notes
                    
                    txtFILE = !processlayout
                    txtPage = !filePage
                    
                    'set tgl button value and caption
                    ckObso = !obsolete
                    ckRD = ![R&D]
                    Call tglCapt(Me.ckRD, 1)
                    Call tglCapt(Me.ckObso, 2)
                    
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
    End If
    
    db.Close
End Sub

Private Sub List651_DblClick(Cancel As Integer)
Dim searchID As Long

    searchID = CLng(Nz(List651, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmLEAKCHECK_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
End Sub
