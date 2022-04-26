VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmEP_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public epID As Long
Public lElec As Long
Public lSeal As Long
Public lMisc As Long
Public sEP As String
Public sEle As String
Public sSeal As String
Public sMis As String
Public sP As String
Public sN As String
Public stSQL As String
Public sVal As String

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

Private Sub cmbBase_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 2)
End Sub

Private Sub cmbCap_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 1)
End Sub

Private Sub cmbCap1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 5)
End Sub

Private Sub cmbCSEAL1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbELEC1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELEC2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELEC3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELEC4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELEC5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub
Private Sub cmbELEC_G_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
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

Private Sub cmbMisc4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMisc5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbRev_AfterUpdate()
Dim sPart As Control
Dim sRev As Control
Dim sFile As Control
    
    Set sPart = partNum
    Set sRev = cmbRev
    Set sFile = fileName
    
    If (IsNull(cmbRev) = False) And (IsNull(partNum) = False) Then
        Call revPop("dupEP", "tblEP", sPart, sRev, sFile)
    End If
End Sub
    
Private Sub cmbSleeve1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSpacer1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 7)
End Sub

Private Sub cmbSpacer2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 7)
End Sub

Private Sub cmdTEST_Click()
Dim sFile As String
Dim lPage As Long

    sFile = Nz(fileName, "n/a")
    lPage = Nz(filePage, 1)

    If (IsNull(fileName) = False) And (fileName <> "n/a") Then
        sFile = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sFile & ".pdf"
        Call pdfOpen(sFile, lPage)
    End If
    
End Sub

Private Sub cmdUndo_Click()

    Call List317_AfterUpdate

End Sub

Private Sub cmdUpdate_Click()
Dim sFile As String
Dim sCap As String
Dim sBase As String


    'in case variables emptied after selected
    sN = "Null"
    sP = ", "
    sSeal = "tblEP_CSEAL"
    sEle = "tblEP_ELECTRODE"
    sMis = "tblEP_MISC"

    'checks that a part is highlighted in the list
    If (partNum <> "") And (List317.ItemsSelected.Count <> 0) Then
        epID = List317.Value
        sCap = sqlStr(cmbCap)
        sBase = sqlStr(cmbBase)
        sFile = sqlStr(fileName)
        
        Call elecUpdate
        Call miscUpdate
        Call sealUpdate
        
        'update EP table
        stSQL = "Update " & sEP & vbCr & _
                " SET [partNum] = " & partNum & sP & _
                    "[Rev] = " & Nz(cmbRev, 1) & sP & _
                    "[FileName] = " & sFile & sP & _
                    "[capNum] = " & sCap & sP & _
                    "[baseNum] = " & sBase & sP & _
                    "[elecLink] = " & lElec & sP & _
                    "[csealLink] = " & lSeal & sP & _
                    "[epVolt] = " & Nz(txtVolt, 15) & sP & _
                    "[epTime] = " & Nz(txtPolish, 5) & sP & _
                    "[epPump] = " & Nz(txtPUMP, 3) & sP & _
                    "[R&D] = " & ckRD & sP & _
                    "[obsolete] = " & ckObso & sP & _
                    "[filePage] = " & Nz(filePage, 1) & sP & _
                    "[miscLink] = " & lMisc & vbCr & _
                " WHERE [ID] = " & epID & ";"
         CurrentDb.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
    List317.Requery
    
End Sub

Private Sub clearAll()
Dim i As Long

    partNum = Null
    cmbRev = Null
    cmbCap = Null
    cmbCap1 = Null
    cmbBase = Null
    fileName = Null
    filePage = Null
    txtVolt = Null
    txtPUMP = Null
    txtPolish = Null
    
    'clear electrodes
    For i = 1 To 5
        Me.Controls("cmbELEC" & i) = Null
    Next
    cmbELEC_G = Null
    
    'clear seals
    For i = 1 To 3
        Me.Controls("cmbCSEAL" & i) = Null
    Next
  
    'clear sleeves
    For i = 1 To 5
        Me.Controls("cmbSleeve" & i) = Null
    Next
    
    'clear spacers
    For i = 1 To 2
        Me.Controls("cmbSpacer" & i) = Null
    Next
    
     'clear misc
    For i = 1 To 5
        Me.Controls("cmbMisc" & i) = Null
    Next
    
    'disenable command button
    cmdTEST.Enabled = False

End Sub

Private Sub sealUpdate()
Dim seal1 As String
Dim seal2 As String
Dim seal3 As String
    
    'assign null values with the string null
    seal1 = sqlStr(cmbCSEAL1)
    seal2 = sqlStr(cmbCSEAL2)
    seal3 = sqlStr(cmbCSEAL3)

   'checks that at least one value was entered. TRUE means all null
   If (seal1 <> sN) Or (seal2 <> sN) Or (seal3 <> sN) Then
        'if a link ID already exists, update values. Otherwise, create a new ID (but only if no null values)
        If (lSeal <> 0) And (IsNull(lSeal) = False) Then
                stSQL = "Update " & sSeal & vbCr & _
                    " SET [cseal1] = " & seal1 & sP & _
                        "[cseal2] = " & seal2 & sP & _
                        "[cseal3] = " & seal3 & vbCr & _
                    " WHERE [ID] = " & lSeal & ";"
                    CurrentDb.Execute stSQL, dbFailOnError
        Else:
            sVal = seal1 & sP & seal2 & sP & seal3
            Call sqlEntryBuilder(sSeal, sVal, True)
            lSeal = Nz(DMax("[ID]", sSeal), 0)
        End If
    End If
    
End Sub

Private Sub elecUpdate()
Dim elec1 As String
Dim elec2 As String
Dim elec3 As String
Dim elec4 As String
Dim elec5 As String
Dim elecG As String
    
    'assign null values with the string null
    elec1 = sqlStr(cmbELEC1)
    elec2 = sqlStr(cmbELEC2)
    elec3 = sqlStr(cmbELEC3)
    elec4 = sqlStr(cmbELEC4)
    elec5 = sqlStr(cmbELEC5)
    elecG = sqlStr(cmbELEC_G)
     
   'checks that at least one value was entered. TRUE means all null
   If (elec1 <> sN) Or (elec2 <> sN) Or (elec3 <> sN) Or (elec4 <> sN) Or (elec5 <> sN) Or (elecG <> sN) Then

        'if a link ID already exists, update values. Otherwise, create a new ID (but only if no null values)
        If (lElec <> 0) And (IsNull(lElec) = False) Then
                stSQL = "Update " & sEle & vbCr & _
                    " SET [groundElectrode] = " & elecG & sP & _
                        "[Electrode1] = " & elec1 & sP & _
                        "[Electrode2] = " & elec2 & sP & _
                        "[Electrode3] = " & elec3 & sP & _
                        "[Electrode4] = " & elec4 & sP & _
                        "[Electrode5] = " & elec5 & vbCr & _
                    " WHERE [ID] = " & lElec & ";"
                    CurrentDb.Execute stSQL, dbFailOnError
        Else:
            sVal = elec1 & sP & elec2 & sP & elec3 & sP & elec4 & sP & elec5 & sP & elecG
            Call sqlEntryBuilder(sEle, sVal, True)
            lElec = Nz(DMax("[ID]", sEle), 0)
        End If
    End If

End Sub

Private Sub miscUpdate()
'sleeves
Dim slv1 As String
Dim slv2 As String
Dim slv3 As String
Dim slv4 As String
Dim slv5 As String

'cap
Dim eleCap1 As String

'misc
Dim misc1 As String
Dim misc2 As String
Dim misc3 As String
Dim misc4 As String
Dim misc5 As String
Dim spac1 As String
Dim spac2 As String

    'in case tbl has emptied
    If (IsNull(sMis) = True) Or (sMis = "") Then
        sMis = "tblEP_MISC"
    End If
    
    'assign null values with the string null
    slv1 = sqlStr(cmbSleeve1)
    slv2 = sqlStr(cmbSleeve2)
    slv3 = sqlStr(cmbSleeve3)
    slv4 = sqlStr(cmbSleeve4)
    slv5 = sqlStr(cmbSleeve5)
    eleCap1 = sqlStr(cmbCap1)
    misc1 = sqlStr(cmbMisc1)
    misc2 = sqlStr(cmbMisc2)
    misc3 = sqlStr(cmbMisc3)
    misc4 = sqlStr(cmbMisc4)
    misc5 = sqlStr(cmbMisc5)
    spac1 = sqlStr(cmbSpacer1)
    spac2 = sqlStr(cmbSpacer2)
    
   'checks that at least one value was entered.
   If (slv1 <> sN) Or (slv2 <> sN) Or (slv3 <> sN) Or (slv4 <> sN) Or (slv5 <> sN) Or (misc1 <> sN) Or (misc2 <> sN) Or (misc3 <> sN) Or (misc4 <> sN) Or (misc5 <> sN) Or (eleCap1 <> sN) Or (spac1 <> sN) Or (spac2 <> sN) Then
        'if a link ID already exists, update values. Otherwise, create a new ID (but only if no null values)
        If (lMisc <> 0) And (IsNull(lMisc) = False) Then
                stSQL = "Update " & sMis & vbCr & _
                    " SET [eleSleeve1] = " & slv1 & sP & _
                        "[eleSleeve2] = " & slv2 & sP & _
                        "[eleSleeve3] = " & slv3 & sP & _
                        "[eleSleeve4] = " & slv4 & sP & _
                        "[eleSleeve5] = " & slv5 & sP & _
                        "[eleCap1] = " & eleCap1 & sP & _
                        "[misc1] = " & misc1 & sP & _
                        "[misc2] = " & misc2 & sP & _
                        "[misc3] = " & misc3 & sP & _
                        "[misc4] = " & misc4 & sP & _
                        "[misc5] = " & misc5 & sP & _
                        "[spacer1] = " & spac1 & sP & _
                        "[spacer2] = " & spac2 & vbCr & _
                    " WHERE [ID] = " & lMisc & ";"
                CurrentDb.Execute stSQL, dbFailOnError
        Else:
            sVal = slv1 & sP & slv2 & sP & slv3 & sP & slv4 & sP & slv5 & sP & eleCap1 & sP & _
                        misc1 & sP & misc2 & sP & misc3 & sP & misc4 & sP & spac1 & sP & spac2 & sP & misc5
            Call sqlEntryBuilder(sMis, sVal, True)
            lMisc = Nz(DMax("[ID]", sMis), 0)
        End If
    End If
  
End Sub


Private Sub fileName_AfterUpdate()

With cmdTEST
    If (IsNull(Me.ActiveControl) = False) Then
        .Enabled = True
    Else:
        .Enabled = False
    End If
End With

End Sub

Private Sub Form_Load()

'reset toggle buttons
    ckRD = False
    Call tglCapt(Me.ckRD, 1)
    ckObso = False
    Call tglCapt(Me.ckObso, 2)

'disenable test button
    cmdTEST.Enabled = False
    
'part number box disabled until listbox is selected
    partNum.Enabled = False
    
End Sub

Private Sub List317_AfterUpdate()
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim rsMisc As DAO.Recordset
Dim rsEle As DAO.Recordset

Dim i As Long
Dim sCol As String
Dim bRD As Boolean
Dim bObs As Boolean

    Call clearAll
    epID = CLng(Nz(List317, 0))
    sEP = "tblEP"
    sEle = "tblEP_ELECTRODE"
    sSeal = "tblEP_CSEAL"
    sMis = "tblEP_MISC"
    sP = ", "
    sN = "Null"

Set db = CurrentDb
Set rs = db.OpenRecordset(sEP)
Set rsEle = db.OpenRecordset(sEle)
Set rsMisc = db.OpenRecordset(sMis)

If (epID <> 0) Then

    partNum.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = epID Then
                'pull boolean information
                    bRD = ![R&D]
                    bObs = !obsolete
                
                'pull link IDs
                    lElec = Nz(!elecLink, 0)
                    lSeal = Nz(!csealLink, 0)
                    lMisc = Nz(!miscLink, 0)
                
                'Pull table information
                    partNum = !partNum
                    cmbRev = !Rev
                    cmbCap = Nz(!capNum)
                    cmbBase = Nz(!baseNum)
                    txtVolt = Nz(!epVolt)
                    txtPUMP = Nz(!epPump)
                    txtPolish = Nz(!epTime)
                    
                    'adjust toggle buttons
                    ckRD = bRD
                    Call tglCapt(Me.ckRD, 1)
                    ckObso = bObs
                    Call tglCapt(Me.ckObso, 2)
                    
                    fileName = Nz(!fileName)
                    filePage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With

'enable/disenable path check button depending if a value is entered
    With cmdTEST
        If (IsNull(fileName) = False) Or (fileName <> "") Then
            .Enabled = True
        Else:
            .Enabled = False
        End If
    End With
    
    'electrodes
    If lElec <> 0 Then
        With rsEle
            .MoveFirst
            Do While Not .EOF
                If !ID = lElec Then
                    For i = 1 To 5
                        sCol = Nz(.Fields("electrode" & i))
                        Me.Controls("cmbELEC" & i).Value = sCol
                    Next
                    cmbELEC_G.Value = Nz(!groundElectrode)
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
        
    End If

    'cseals
    If lSeal <> 0 Then
        For i = 1 To 3
            sCol = "[cseal" & i & "]"
            Me.Controls("cmbCSEAL" & i).Value = Nz(DLookup(sCol, sSeal, "[ID] = " & lSeal))
        Next
    End If

    'misc
    If lMisc <> 0 Then
    
        With rsMisc
            .MoveFirst
            
            Do While Not .EOF
                If !ID = lMisc Then
                    'sleeves holders
                    For i = 1 To 5
                        sCol = Nz(.Fields("eleSleeve" & i))
                        Me.Controls("cmbSLEEVE" & i).Value = sCol
                    Next
                
                    'misc
                    For i = 1 To 5
                        sCol = Nz(.Fields("misc" & i))
                        Me.Controls("cmbMisc" & i).Value = sCol
                    Next
                    
                    'electrode cap
                    cmbCap1.Value = !eleCap1
                
                    'spacer
                    For i = 1 To 2
                        sCol = Nz(.Fields("Spacer" & i))
                        Me.Controls("cmbSpacer" & i).Value = sCol
                    Next
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
        
    End If
Else:
    partNum.Enabled = False
End If

    db.Close
End Sub

Private Sub List317_DblClick(Cancel As Integer)
Dim searchID As Long

    searchID = CLng(Nz(List317, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmEP_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
      
End Sub
