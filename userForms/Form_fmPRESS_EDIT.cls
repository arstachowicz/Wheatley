VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPRESS_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public pressID As Long
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
    Call notListed0107(NewData, Response, 15, 9)
End Sub

Private Sub cmbRev_AfterUpdate()
    Call fieldCheck
End Sub

Private Sub cmbTALON_AfterUpdate()
    Call fieldCheck
End Sub

Private Sub fieldCheck()
'checks if info has been entered previously under the same part number and rev
Dim ctrlP, ctrlR As Control

    tbl = "tblPress"
    Set ctrlP = cmbpart
    Set ctrlR = cmbRev
    
    Call revPop("dupPRESS", tbl, ctrlP, ctrlR)
    
End Sub

Private Sub cmbTOOL1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOOL2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOOL3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOP_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 15, 9)
End Sub

Private Sub cmdUpdate_Click()
    Dim sSQL As String
    Dim pNum As String
    
    'top and bottom
    Dim sTop1 As String
    Dim sBottom As String
    
    'part number and PDF info
    Dim revN As Long
    Dim pdfPage As Long
    
    'staking tools
    Dim sTOOL1 As String
    Dim sTOOL2 As String
    Dim sTOOL3 As String
    Dim sOther As String
    
    'for adjusting
    Dim lCounter As Long
    Dim pdfFile As String
    Dim sNote As String
    Dim bObso As Boolean
    Dim bRD As Boolean
    Dim sP As String
    Dim sN As String

    sP = ", "
    sN = "Null"
    pNum = Nz(cmbTALON, sN)
    
If (IsNull(listPart) = False) And (pNum <> sN) Then
    pressID = listPart.Value

    If (pNum <> sN) Then
    
        revN = Nz(cmbRev.Value, 1)
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
        sTOOL1 = sqlStr(cmbTOOL1)
        sTOOL2 = sqlStr(cmbTOOL2)
        sTOOL3 = sqlStr(cmbTOOL3)
        sOther = sqlStr(cmbMisc)
        sNote = sqlStr(txtNotes)
        bObso = ckObso
        bRD = ckRD
    
        'enter all info into the EP table
        'update the basic EP table
            sSQL = "Update " & tbl & vbCr & _
                    " SET [partNum] = " & pNum & sP & _
                        "[Rev] = " & CStr(revN) & sP & _
                        "[partTop] = " & sTop1 & sP & _
                        "[partBot] = " & sBottom & sP & _
                        "[partTool1] = " & sTOOL1 & sP & _
                        "[partTool2] = " & sTOOL2 & sP & _
                        "[partTool3] = " & sTOOL3 & sP & _
                        "[partMisc] = " & sOther & sP & _
                        "[notes] = " & sNote & sP & _
                        "[obsolete] = " & CStr(bObso) & sP & _
                        "[R&D] = " & CStr(bRD) & sP & _
                        "[fileName] = " & pdfFile & sP & _
                        "[filePage] = " & CStr(pdfPage) & vbCr & _
                    " WHERE [ID] = " & CStr(pressID) & ";"
        CurrentDb.Execute sSQL, dbFailOnError
        MsgBox "Successfully updated!"
        listPart.Requery
    End If
End If

End Sub

Private Sub cmdUndo_Click()

    Call ListPart_AfterUpdate

End Sub

Private Sub Form_Load()

    'clears all information in textboxes
    With cmbTALON
        .Value = Null
        .SetFocus
    End With
    
    cmbRev = Null
    cmbTOP = Null
    cmbBOTTOM = Null
    cmbTOOL1 = Null
    cmbTOOL2 = Null
    cmbTOOL3 = Null
    cmbMisc = Null
    txtNotes = Null
    txtFILE = Null
    txtPage = Null
    
    ckRD = False
    ckObso = False
    Call tglCapt(Me.ckRD, 1)
    Call tglCapt(Me.ckObso, 2)
    
    listPart.Requery
    
End Sub

Private Sub ListPart_AfterUpdate()
Dim db As DAO.Database
Dim rs As DAO.Recordset

tbl = "tblPress"
Set db = CurrentDb
Set rs = db.OpenRecordset("tblPress", 4)

Call Form_Load
With rs
    If (IsNull(listPart) = False) Then
        pressID = listPart.Value
        
        .MoveFirst
        Do Until .EOF
            If ![ID] = pressID Then
                cmbTALON = ![partNum]
                cmbRev = ![Rev]
                cmbTOP = ![partTop]
                cmbBOTTOM = ![partBot]
                cmbTOOL1 = ![partTool1]
                cmbTOOL2 = ![partTool2]
                cmbTOOL3 = ![partTool3]
                cmbMisc = ![partMisc]
                txtNotes = ![Notes]
                txtFILE = ![fileName]
                txtPage = ![filePage]
                
                ckObso = ![obsolete]
                ckRD = ![R&D]
                Call tglCapt(Me.ckRD, 1)
                Call tglCapt(Me.ckObso, 2)
                Exit Do
            End If
            .MoveNext
        Loop
    End If
    .Close
End With

db.Close

End Sub

Private Sub listPart_DblClick(Cancel As Integer)
Dim searchID As Long

    searchID = CLng(Nz(listPart, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmPRESS_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
End Sub

Public Sub condFormOpenEP(epID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset

    'top and bottom
    Dim sTop1 As String
    Dim sBottom As String
    
    'part number and PDF info
    Dim revN As Long
    Dim pdfPage As Long
    
    'staking tools
    Dim sTOOL1 As String
    Dim sTOOL2 As String
    Dim sTOOL3 As String
    Dim sOther As String
    
    'for adjusting
    Dim lCounter As Long
    Dim pdfFile As String
    Dim sNote As String
    Dim bRD As Boolean

    Dim sCol As String
    Dim bRD As Boolean

    sPress = "tblPress"


Set db = CurrentDb
Set rs = db.OpenRecordset(sPress)


If (pressID <> 0) Then

    cmbTALON.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = pressID Then
                'pull boolean information
                    bRD = ![R&D]
        
                'Pull table information
                    cmbTALON = !partNum
                    sTop1 = Nz(!capNum)
                    sBottom = Nz(!baseNum)
                    
                'adjust toggle buttons
                    ckRD = bRD
                    Call tglCapt(Me.ckRD, 1)
                    
                'file and pages
                    pdfFile = Nz(!fileName)
                    pdfPage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With


Else:
    cmbTALON.Enabled = False
End If

    db.Close

End Sub


