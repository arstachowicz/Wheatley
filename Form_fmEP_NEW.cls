VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmEP_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public epID As Long

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

Private Sub cmbCSEAL1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbElecCap_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 5)
End Sub

Private Sub cmbELECTRODE_G_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE5_NotInList(NewData As String, Response As Integer)
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
    
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
    
Dim lPart As Long
Dim lRev As Long
Dim sNum As String
Dim sRev As String
Dim sQDF As String

    
Set db = CurrentDb
Set qdf = db.QueryDefs("dupEP")

'if already in the system, popup alert and don't save
If (IsNull(cmbTALON) = False) And (IsNull(cmbRev) = False) Then
    lPart = cmbTALON.Value
    lRev = cmbRev.Value
        
    sQDF = "SELECT tblEP.ID, tblEP.partNum, tblEP.rev, tblEP.obsolete, tblEP.[R&D], tblPARTNUM.partNum, refREV.rev " & _
            "FROM (tblEP LEFT JOIN tblPARTNUM ON tblEP.partNum = tblPARTNUM.ID) LEFT JOIN refREV ON tblEP.Rev = refREV.ID " & _
            "WHERE (((tblEP.partNum)=" & lPart & ") AND ((tblEP.rev)=" & lRev & ") AND ((tblEP.obsolete)=False) AND ((tblEP.[R&D])=False));"
    qdf.SQL = sQDF
    
Set rs = qdf.OpenRecordset
     
     With rs
        'check if duplicate information has been entered
        If .RecordCount <> 0 Then
            .MoveFirst
            sNum = Nz(![tblPARTNUM.partNum], "n/a")
            sRev = Nz(![refRev.rev], "n/a")
            epID = Nz(![ID], 0)
                    
            'asks if you want to edit existing rev or to cancel
            MsgBox "Part number " & sNum & " (Rev " & sRev & ") has already been entered.", vbOKOnly, "Duplicate Part"
        Else:
            'checks for an old entry to load
            '####ADD####
            'Check if form is open as a dialog box, and if it is, do not run following IF code
            If (lRev > 1) Then 'and NOT dialog??
                If (MsgBox("Do you want to browse for an older revision to copy and load existing data?", vbYesNo + vbDefaultButton2, "Load Existing?") = vbYes) Then
                  Call oldRevLoad(lPart, lRev)
                End If
            End If
            
            'search IDs for corresponding string and build a file name based on this info
            sNum = DLookup("[partNum]", "tblPARTNUM", "[ID] = " & lPart)
            sRev = DLookup("[REV]", "refRev", "[ID] = " & lRev)
            txtFILE.Value = sNum & "-PL_" & sRev
    
        End If
        .Close
        End With
End If

    qdf.Close
    db.Close
    
    
End Sub

Private Sub oldRevLoad(lPart As Long, lRev As Long)
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
    
Dim sNum As String
Dim sRev As String
Dim sQDF As String

    
Set db = CurrentDb
Set qdf = db.QueryDefs("dupEP")

    'checks for an old entry to load
        sQDF = "SELECT tblEP.ID, tblEP.partNum, tblEP.rev, tblEP.obsolete, tblEP.[R&D], tblPARTNUM.partNum, refREV.rev " & _
                    "FROM (tblEP LEFT JOIN tblPARTNUM ON tblEP.partNum = tblPARTNUM.ID) LEFT JOIN refREV ON tblEP.Rev = refREV.ID " & _
                    "WHERE (((tblEP.partNum)=" & lPart & ") AND ((tblEP.rev)=" & lRev & ") AND ((tblEP.obsolete)=False) AND ((tblEP.[R&D])=False));"
        qdf.SQL = sQDF
        Set rs = qdf.OpenRecordset
        
        With rs
            If .RecordCount <> 0 Then
                .MoveFirst
                epID = Nz(![tblEP.ID], 0)
            Else:
                MsgBox "No other entries were found."
            End If
            .Close
        End With
        
        qdf.Close
        db.Close
                             
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

Private Sub cmbTALON_AfterUpdate()
       
    Call cmbRev_AfterUpdate 'checks if info has been entered previously
       
End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim strTmp As String
Dim queryName As String

queryName = "dupPARTNUM"
Set db = CurrentDb
Set rs = db.OpenRecordset(queryName)

    'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new part number?"
    
If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then

    'Append the NewData as a record in the Categories table.
    strTmp = "INSERT INTO tblpartnum (partNum) " & _
                "VALUES ('" & NewData & "');"

    'if already in the system, send an alert and don't save
    With rs
        If .RecordCount <> 0 Then
            DoCmd.RunCommand acCmdUndo
            MsgBox "This is a duplicate part number."
            .Close
            Exit Sub
        End If
    End With
                
    DBEngine(0)(0).Execute strTmp, dbFailOnError

    'Notify Access about the new record, so it requeries the combo.
    Response = acDataErrAdded
Else:
    Response = acDataErrContinue
    
End If
    
  rs.Close
  db.Close
  
End Sub

Private Sub cmdEXIT_Click()
Dim formName As String
    formName = "fmEP_NEW"
    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
End Sub

Private Sub Command131_Click()
 
    'tables
    Dim tblELEC As String
    Dim tblSEAL As String
    Dim tblMISC As String
    Dim idElec As Long
    Dim idSeal As Long
    Dim idMisc As Long
    Dim sElectrodes As String
    Dim sCseal As String
    Dim sMisc As String
    Dim sSQL As String
    
    'electrodes
    Dim elec1 As String 'electrodes
    Dim elec2 As String 'electrodes
    Dim elec3 As String 'electrodes
    Dim elec4 As String 'electrodes
    Dim elec5 As String 'electrodes
    Dim elecGr As String 'electrodes
    
    'cseals
    Dim cs1 As String 'cseals
    Dim cs2 As String 'cseals
    Dim cs3 As String 'cseals
    
    Dim lCap As String 'cap and base
    Dim lBase As String 'cap and base
    
    'misc
    Dim lMisc1 As String 'miscellaneous
    Dim lMisc2 As String 'miscellaneous
    Dim lMisc3 As String 'miscellaneous
    Dim lMisc4 As String 'miscellaneous
    Dim lMisc5 As String 'miscellaneous
    
    
    Dim lVolt As Double
    Dim lPre As Double
    Dim lPol As Double
    
    Dim pNum As Long
    Dim revN As Long
    Dim pdfFile As String
    Dim pdfPage As Long
    
    Dim lSle1 As String 'electrode sleeves
    Dim lSle2 As String 'electrode sleeves
    Dim lSle3 As String 'electrode sleeves
    Dim lSle4 As String 'electrode sleeves
    Dim lSle5 As String 'electrode sleeves
    
    Dim lSpac1 As String 'spacers
    Dim lSpac2 As String 'spacers
    
    Dim lElecCap As String

    Dim lCounter As Long
    Dim sN As String
    Dim sP As String

    sP = ", "
    sN = "Null"
    pNum = Nz(cmbTALON, 0)
    tblELEC = "tblEP_electrode"
    tblSEAL = "tblEP_CSEAL"
    tblMISC = "tblEP_MISC"
    
    If (IsNull(pNum) = False) And (pNum <> 0) Then

        elec1 = sqlStr(cmbELECTRODE1)
        elec2 = sqlStr(cmbELECTRODE2)
        elec3 = sqlStr(cmbELECTRODE3)
        elec4 = sqlStr(cmbELECTRODE4)
        elec5 = sqlStr(cmbELECTRODE5)
        elecGr = sqlStr(cmbELECTRODE_G)
        
        cs1 = sqlStr(cmbCSEAL1)
        cs2 = sqlStr(cmbCSEAL2)
        cs3 = sqlStr(cmbCSEAL3)
            
        revN = Nz(cmbRev.Value, 1)
        pdfFile = sqlStr(txtFILE)
        pdfPage = Nz(txtPage.Value, 1)
      
        lCap = sqlStr(cmbCap)
        lBase = sqlStr(cmbBase)
        
        lVolt = Nz(txtVolt, 15)
        lPre = Nz(txtPUMP, 3)
        lPol = Nz(txtTime, 8)
        
        lMisc1 = sqlStr(cmbMisc1)
        lMisc2 = sqlStr(cmbMisc2)
        lMisc3 = sqlStr(cmbMisc3)
        lMisc4 = sqlStr(cmbMisc4)
        lMisc5 = sqlStr(cmbMisc5)
        
        lSle1 = sqlStr(cmbSleeve1)
        lSle2 = sqlStr(cmbSleeve2)
        lSle3 = sqlStr(cmbSleeve3)
        lSle4 = sqlStr(cmbSleeve4)
        lSle5 = sqlStr(cmbSleeve5)
        
        lElecCap = sqlStr(cmbElecCap)
        
        lSpac1 = sqlStr(cmbSpacer1)
        lSpac2 = sqlStr(cmbSpacer1)
        
        
        'PDF entry corrector
        If pdfFile <> sN Then
            'corrects pdf string if apostrophe is present
            'Replace pdfFile, "'", "'''"
            'checks if user entered "pdf" into the file field and removes this before submitting
            If Right(pdfFile, 3) = "pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 3)
            ElseIf Right(pdfFile, 4) = ".pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 4)
            End If

        End If
        
        'Enter electrode(s) into appropriate table, pull the new ID and store in EP
        If (IsNull(cmbELECTRODE1) = False) Or (IsNull(cmbSleeve1) = False) Then
                sElectrodes = elec1 & sP & elec2 & sP & elec3 & sP & elec4 & sP & elec5 & sP & elecGr
                Call sqlEntryBuilder(tblELEC, sElectrodes, True)
                idElec = DMax("[ID]", tblELEC)
        Else:
            idElec = 0
        End If
         
        'Enter c-seal(s) into appropriate table, pull the ID for those c-seals and store in EP table
        If (IsNull(cmbCSEAL1) = False) Then
            sCseal = cs1 & sP & cs2 & sP & cs3
            Call sqlEntryBuilder(tblSEAL, sCseal, True)
            idSeal = DMax("[ID]", tblSEAL)
        Else:
            idSeal = 0
        End If
    
        'Enter all other parts into appropriate table, pull the ID
        If (IsNull(cmbMisc1) = False) Or (IsNull(cmbSpacer1) = False) Or (IsNull(cmbSleeve1) = False) Or (IsNull(cmbElecCap) = False) Then
            sMisc = lSle1 & sP & lSle2 & sP & lSle3 & sP & lSle4 & sP & lSle5 & sP & lElecCap & sP & _
                    lMisc1 & sP & lMisc2 & sP & lMisc3 & sP & lMisc4 & sP & _
                    lSpac1 & sP & lSpac2 & sP & lMisc5
            Call sqlEntryBuilder(tblMISC, sMisc, True)
            idMisc = DMax("[ID]", tblMISC)
        Else:
            idMisc = 0
        End If
    
        'enter all info into the EP table
        sSQL = pNum & sP & revN & sP & pdfFile & sP & lCap & sP & lBase & sP & idElec & sP & idSeal & sP & _
                lVolt & sP & lPol & sP & lPre & sP & ckRD & sP & False & sP & pdfPage & sP & sN & sP & idMisc
        Call sqlEntryBuilder("tblEP", sSQL, True)
        MsgBox "Successfully added!"
        Call Command132_Click
    End If
End Sub

Private Sub Command132_Click()

'clears all information in textboxes
Dim i As Long

    cmbTALON = Null
    cmbRev = Null
    
    cmbCap = Null
    cmbBase = Null
    cmbELECTRODE_G = "A1343" '01-50-5225

    With Me
        For i = 1 To 5
            .Controls("cmbELECTRODE" & i) = Null
            .Controls("cmbSleeve" & i) = Null
            .Controls("cmbMisc" & i) = Null
        Next
        
        For i = 1 To 3
            .Controls("cmbCSEAL" & i) = Null
        Next
    End With
    
    cmbElecCap = Null
    
    cmbSpacer1 = Null
    cmbSpacer2 = Null
    
    txtVolt = 15
    txtTime = 8
    txtPUMP = 3
    txtFILE = Null
    txtPage = Null
    
    With ckRD
        .Value = False
        Call tglCapt(Me.ckRD, 1)
    End With

    cmbTALON.SetFocus

End Sub

Private Sub Form_Load()

    If Not IsNull(Me.OpenArgs) Then 'checks for passed conditions from other forms
        epID = CLng(Me.OpenArgs)
        cmdEXIT.Visible = True
        Call condFormOpenEP(epID)
    Else:
        txtVolt = 15
        txtTime = 8
        txtPUMP = 3
        
        cmdEXIT.Visible = False
        
        ckRD.Value = False
        Call tglCapt(Me.ckRD, 1)
        
        cmbTALON.SetFocus
    End If
    
    
End Sub

Public Sub condFormOpenEP(epID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim rsMisc As DAO.Recordset
Dim rsEle As DAO.Recordset

Dim sEP As String
Dim sEle As String
Dim sSeal As String
Dim sMis As String

Dim lElec As Long
Dim lSeal As Long
Dim lMisc As Long

Dim i As Long
Dim sCol As String
Dim bRD As Boolean

    sEP = "tblEP"
    sEle = "tblEP_ELECTRODE"
    sSeal = "tblEP_CSEAL"
    sMis = "tblEP_MISC"

Set db = CurrentDb
Set rs = db.OpenRecordset(sEP)
Set rsEle = db.OpenRecordset(sEle)
Set rsMisc = db.OpenRecordset(sMis)


If (epID <> 0) Then

    cmbTALON.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = epID Then
                'pull boolean information
                    bRD = ![R&D]
                
                'pull link IDs
                    lElec = Nz(!elecLink, 0)
                    lSeal = Nz(!csealLink, 0)
                    lMisc = Nz(!miscLink, 0)
                
                'Pull table information
                    cmbTALON = !partNum
                    cmbCap = Nz(!capNum)
                    cmbBase = Nz(!baseNum)
                    txtVolt = Nz(!epVolt)
                    txtPUMP = Nz(!epPump)
                    txtTime = Nz(!epTime)
                    
                'adjust toggle buttons
                    ckRD = bRD
                    Call tglCapt(Me.ckRD, 1)
                    
                'file and pages
                    txtFILE = Nz(!fileName)
                    txtPage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    'electrodes
    If lElec <> 0 Then
        With rsEle
            .MoveFirst
            Do While Not .EOF
                If !ID = lElec Then
                    For i = 1 To 5
                        sCol = Nz(.Fields("electrode" & i))
                        Me.Controls("cmbELECTRODE" & i).Value = sCol
                    Next
                    cmbELECTRODE_G.Value = Nz(!groundElectrode)
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
                    cmbElecCap.Value = !eleCap1
                
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
    
    cmbRev.SetFocus
Else:
    cmbTALON.Enabled = False
End If

    db.Close

End Sub

