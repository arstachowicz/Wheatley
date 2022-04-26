VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmEPFIXTURES_SEARCH"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public lCap, lBase As String

Dim fileName As String
Dim pageNum As Long
Dim partEP As String
Dim cap As String
Dim base As String
Dim sAltC As String
Dim sAltB As String
Dim partAll As String

Private Sub cmdAlt1_Click()
    MsgBox "An alternative number for this is " & sAltC & ". The alternative part may be engraved as such."
End Sub

Private Sub cmdAlt2_Click()
    MsgBox "An alternative number for this is " & sAltB & ". The alternative part may be engraved as such."
End Sub

Private Function altLink(ByVal altID As Long, ctrl As Control, ByVal sFixt As String) As String
'altID: ID of listed alternative part number
'sFixt: string of actual part assigned to EP's ID
'ctrl: the control button that displays alternative part numbers

Dim db As DAO.Database
Dim qry As DAO.QueryDef
Dim rs As DAO.Recordset

    Set db = CurrentDb
    Set qry = db.QueryDefs("qryLINKED")
    
    
        qry.SQL = "SELECT tblPART_01.autoID, tblPART_01.partNumber, tblPART_01.linkedID " & vbCr & _
                    "From tblPART_01 " & vbCr & _
                    "WHERE (((tblPART_01.autoID)=" & altID & ")) OR (((tblPART_01.linkedID)=" & altID & "));"
        Set rs = qry.OpenRecordset
        
        With rs
            If .RecordCount > 1 Then
                .MoveFirst
                
                Do Until .EOF
                    altLink = ![partNumber]
                    If altLink <> sFixt Then
                        ctrl.Visible = True
                        ctrl.Enabled = True
                        Exit Do
                    Else:
                        ctrl.Visible = False
                        ctrl.Enabled = False
                    End If
                    .MoveNext
                Loop
            Else:
                ctrl.Enabled = False
            End If
            .Close
        End With
        
        qry.Close
        db.Close
        
End Function

Private Sub locCap(ByVal lLoc As Long, ByVal sLoc As String, Capt As Control)
 'check location of cap and base. Update caption if the piece is NOT in the CL and is stored elsewhere
 'lLoc = Location ID  as long
 'sLoc = Location as string (for building a caption)
 'Capt = name of label/caption on form
 
 Dim sLocCap As String
 Dim sLeader As String
 
    sLeader = "*This part is "
    
    If (lLoc <> 14) Then
                
        If (lLoc >= 9) And (lLoc <= 11) Then
            sLocCap = sLeader & "in " & LCase(sLoc) & "."
        Else:
            sLocCap = sLeader & LCase(sLoc) & "."
        End If
                    
        Capt.Caption = sLocCap
        Capt.Visible = True
                    
    End If
                
End Sub
           
Private Sub cmdPicBase_Click()
    fileName = indPDF0107(lBase, True)
    Call pdfOpen(fileName, 1)
End Sub

Private Sub cmdPicCap_Click()
    fileName = indPDF0107(lCap, True)
    Call pdfOpen(fileName, 1)
End Sub


Private Sub cmdBaseInfo_Click()
Dim ctrl As Control

    Set ctrl = Me.Controls!txtBASE
    Call openPartInfo(Me.Controls!cmdBaseInfo, lBase)
    
End Sub

Private Sub cmdCapInfo_Click()

    Call openPartInfo(Me.Controls!txtCAP, lCap)
    
End Sub

Private Sub openPartInfo(ctrl As Control, Optional ByVal sSearch As String)
'ctrl: where part string is located (in case ID empties/times out)
'sSearch: where ID is stored (as string)

Dim sInfoFM As String
Dim sAllQRY As String
Dim sN As String
Dim sCapt As String
    
sInfoFM = "fmPART_INFO"
sAllQRY = "qryPARTNUM_ALL"
    
    If (sSearch <> "n/a") And (IsNull(sSearch) = False) And (sSearch <> "") Then
        'open form and populate fields with part's matching uniqID
        DoCmd.OpenForm sInfoFM, acNormal, , , , acDialog, sSearch
    Else:
        'in case it times out, re-search 'lCap'
        If (IsNull(ctrl) = False) And (ctrl.Caption <> "n/a") Then
            sCapt = Trim(ctrl.Caption)
            'sSearch = DLookup("[uniqID]", sAllQRY, "[subQry.partNumber] = " & sCapt)
            DoCmd.OpenForm sInfoFM, acNormal, , , , acDialog, sSearch
        End If
    End If

End Sub
Private Sub cmdSETUP_Click()

If (fileName <> "") Then
    Call pdfOpen(fileName, pageNum)
Else:
    MsgBox "The file name has been emptied. Resubmit the form to try again."
End If
    
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    Call clearFields
    txtPART = Null
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "EP Fixtures"
    Call cmdUndo_Click

End Sub
Private Sub lblWHERE_USED_Click()

    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog

End Sub

Private Sub lblWHERE_USED_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub txtPart_AfterUpdate()
    Dim db As DAO.Database
    Dim qdf As DAO.QueryDef
    Dim rst As DAO.Recordset
    Dim ctrl As Control
    
    'all queries
    Dim partEP As String
    Dim qryEP As String
    Dim qryCSEAL As String
    Dim qryELEC As String
    
    'location of foreign key to linked tables
    Dim lID As Long
    Dim lTime As Long
    Dim lVolt As Long
    Dim lPump As Long
    Dim lPage As Long
    Dim lSeal As Long
    Dim lElec As Long
    Dim lMisc As Long
    Dim lUseC As Long
    Dim lUseB As Long
    
    'location ID's of cap and base
    Dim lLocC As Long
    Dim lLocB As Long
    Dim sLocC As String
    Dim sLocB As String
    
    'alternative part possible
    Dim lCapAlt As Long
    Dim lBaseAlt As Long
    
    'used to build query
    Dim sP As String
    Dim sN As String
    Dim sL As String
    Dim s01 As String
    Dim sEP As String
    Dim sStor As String
    Dim sO As String
    Dim sA As String
    
    'SQL lines
    Dim qrySel As String
    Dim qryFrom As String
    Dim qryWher As String
    Dim qryOrd As String
    Dim qryALL As String
    
    Dim sFileName As String

'Clear old data, prepare variables
    Call clearFields
    partEP = Trim(txtPART)
    qryEP = "qryEP_FIXTURES"
    s01 = "qryPARTNUM_ALL"
    qryCSEAL = DLookup("[relQuery]", "tblPART_TYPES", "[ID] = " & 6)
    qryELEC = DLookup("[relQuery]", "tblPART_TYPES", "[ID] = " & 3)
    
    Set db = CurrentDb
    Set qdf = db.QueryDefs(qryEP)
    
    
If (IsNull(partEP) = False) And (partEP <> "") Then

    On Error GoTo absentTalonPartNum
    lID = DLookup("[ID]", "qryPARTNUM", "[partNum] = '" & partEP & "'")
    
    'build query text
            sP = ", "
            sN = "n/a"
            sO = " ON "
            sA = " AS "
            sL = " LEFT JOIN "
            sEP = "tblEP"
            sStor = "tblPART_STORAGE"
         
    'build SQL
    qrySel = "SELECT TOP 1 " & sEP & ".Rev" & sP & sEP & ".capNum" & sP & sEP & ".baseNum" & sP & s01 & ".partNumber" & sA & "capStr" & sP & _
                            s01 & "_1.partNumber" & sA & "baseStr" & sP & _
                        sEP & ".elecLink" & sP & sEP & ".csealLink" & sP & sEP & ".miscLink" & sP & _
                        sEP & ".epVolt" & sP & sEP & ".epTime" & sP & sEP & ".epPump" & sP & _
                        sEP & ".fileName" & sP & sEP & ".filePage" & sP & _
                        sStor & ".ID" & sP & sStor & ".locName" & sA & "capLoc" & sP & sStor & "_1.ID" & sP & sStor & "_1.locName" & _
                        sA & "baseLoc " & vbCr
    qryFrom = "FROM (((" & sEP & sL & s01 & sO & sEP & ".capNum = " & s01 & ".uniqID)" & sL & s01 & sA & s01 & "_1" & sO & sEP & ".baseNum = " & s01 & "_1.uniqID)" & sL & sStor & sO & s01 & ".location = " & sStor & ".ID)" & sL & sStor & sA & sStor & "_1" & sO & "" & s01 & "_1.location = " & sStor & "_1.ID " & vbCr
    qryWher = "WHERE (((" & sEP & ".partNum) = " & lID & ") And ((" & sEP & ".[R&D]) = False) And ((" & sEP & ".obsolete) = False)) " & vbCr
    qryOrd = "ORDER BY " & sEP & ".Rev DESC;"

    qryALL = qrySel & qryFrom & qryWher & qryOrd
    qdf.SQL = qryALL

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            cmdSETUP.Enabled = False
            Call cmdUndo_Click
        Else:
            .MoveFirst
            
            'Pull data from first record
            
            'pull cap/base data
            cap = Nz(!CapStr, sN)
            base = Nz(!baseStr, sN)
            lCap = Nz(!capNum, sN)
            lBase = Nz(!baseNum, sN)
            
            If (lCap <> sN) Then
                cmdCapInfo.Enabled = True
                cmdCapInfo.Visible = True
            Else:
                cmdCapInfo.Enabled = False
                cmdCapInfo.Visible = False
            End If
            
            If (lBase <> sN) Then
                cmdBaseInfo.Enabled = True
                cmdBaseInfo.Visible = True
            Else:
                cmdBaseInfo.Enabled = False
                cmdBaseInfo.Visible = False
            End If

            'pull EP parameters
            lVolt = Nz(![epVolt])
            lTime = Nz(![epTime])
            lPump = Nz(![epPump])
            sFileName = Nz(![fileName])
            lPage = Nz(![filePage], 1)
            
            'pull data to linked tables (cseal, misc, electrodes, etc)
            lSeal = Nz(!csealLink, 0)
            lElec = Nz(!elecLink, 0)
            lMisc = Nz(!miscLink, 0)
            
            'Pull location information for cap and base
            lLocC = Nz(![tblPART_STORAGE.ID])
            lLocB = Nz(![tblPART_STORAGE_1.ID])
            sLocC = Nz(!CapLoc)
            sLocB = Nz(!BaseLoc)
            
            'Checks if a process layout was made for that part number
                If sFileName <> "" Then
                    cmdSETUP.Enabled = True
                    fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sFileName & ".pdf"
                    pageNum = lPage
                Else:
                    cmdSETUP.Enabled = False
                End If
                
            On Error GoTo captionBuild:
            'check location of CAP and update label if not in CL
            If (lLocC <> 0) Then
                Set ctrl = lblCap_Loc
                Call locCap(lLocC, sLocC, ctrl)
            End If
            
            'check location of BASE and update label if not in CL
            If (lLocB <> 0) Then
                Set ctrl = lblBase_Loc
                Call locCap(lLocB, sLocB, ctrl)
            End If
            
        End If
        .Close
        
    End With
    
captionBuild:

    

    'reload electrode and c-seal sections
        If (lElec <> 0) Then
            Set ctrl = Me.listELECTRODE
            Call elecBuilder(lElec, qryELEC, ctrl)
        End If
        
        If (lSeal <> 0) Then
            Set ctrl = Me.listCSEAL
            Call sealBuilder(lSeal, qryCSEAL, ctrl)
        End If
        
    'Populate fields based on first entry
        txtCAP.Caption = cap
        txtBASE.Caption = base
        txtVolt.Caption = lVolt
        txtTime.Caption = lTime
        txtTIME2.Caption = lTime
        txtPUMP.Caption = lPump
        lblCapSC.Caption = lCap
        lblBaseSC.Caption = lBase

End If
    
    'close out open items
    qdf.Close
    db.Close
    
macro_exit:
    Exit Sub
    
absentTalonPartNum:
    MsgBox "This part number is not in the system."
    cmdSETUP.Enabled = False
    Resume macro_exit
    
End Sub

Private Sub elecBuilder(ByVal lLink As Long, ByVal sQry As String, ctrl As Control)

'builds a list to be displayed in the listbox of the form, for electrodes and cseals only at this time

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim sN As String

sN = "n/a"
Set db = CurrentDb
Set qdf = db.QueryDefs(sQry)


If (lLink <> 0) Then
    qdf.SQL = "SELECT uElec.linker, uElec.electrode, qryPARTNUM_ALL.partNumber " & vbCr & _
              "FROM (select id as linker, electrode1 as electrode from tblEP_ELECTRODE Union select id as linker, " & _
                     "electrode2 from tblEP_ELECTRODE Union select id as linker, electrode3 from tblEP_ELECTRODE Union " & _
                     "select id as linker, electrode4 from tblEP_ELECTRODE Union select id as linker, electrode5 from tblEP_ELECTRODE) " & _
                     "AS uElec INNER JOIN qryPARTNUM_ALL ON uElec.electrode = qryPARTNUM_ALL.uniqID " & vbCr & _
              "WHERE(((uElec.linker) = " & lLink & ")) " & vbCr & _
              "ORDER BY qryPARTNUM_ALL.partNumber;"

    Set rs = qdf.OpenRecordset(4)
'checks if anything is entered after ID, enters "n/a" if nothing is available
    With rs
        If .RecordCount <> 0 Then
            
            ctrl.RowSourceType = "Table/Query"
            ctrl.RowSource = sQry
        Else:
            ctrl.RowSourceType = "Value List"
            ctrl.RowSource = sN
        End If
        .Close
    End With
End If

'close open sets
    qdf.Close
    db.Close

End Sub
Private Sub sealBuilder(ByVal lLink As Long, ByVal sQry As String, ctrl As Control)

'builds a list to be displayed in the listbox of the form, for electrodes and cseals only at this time

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim sN As String

sN = "n/a"
Set db = CurrentDb
Set qdf = db.QueryDefs(sQry)


If (lLink <> 0) Then
    qdf.SQL = "SELECT uSEAL.linker, uSEAL.seal, qryPARTNUM_ALL.partNumber " & vbCr & _
              "FROM (select id as linker, CSEAL1 as seal from tblEP_CSEAL union select id as linker, CSEAL2 from tblEP_CSEAL union select id as linker, CSEAL3 from tblEP_CSEAL) " & _
              "AS uSEAL INNER JOIN qryPARTNUM_ALL ON uSEAL.seal = qryPARTNUM_ALL.uniqID " & vbCr & _
              "WHERE (((uSEAL.linker)=" & lLink & ")) " & vbCr & _
              "ORDER BY qryPARTNUM_ALL.partNumber;"

    Set rs = qdf.OpenRecordset(4)
'checks if anything is entered after ID, enters "n/a" if nothing is available
    With ctrl
        If rs.RecordCount <> 0 Then
            .RowSourceType = "Table/Query"
            .RowSource = sQry
        Else:
            .RowSourceType = "Value List"
            .RowSource = sN
        End If
        rs.Close
    End With
End If

'close open items
    qdf.Close
    db.Close

End Sub

Private Sub clearFields()

'clear field
    txtCAP.Caption = ""
    txtBASE.Caption = ""
    txtTime.Caption = ""
    txtVolt.Caption = ""
    txtTIME2.Caption = ""
    txtPUMP.Caption = ""
    listCSEAL.RowSource = ""
    listELECTRODE.RowSource = ""
    lblCapSC.Caption = "n/a"
    lblBaseSC.Caption = "n/a"
    txtPART.SetFocus
    
    cmdSETUP.Enabled = False
    
    lblCap_Loc.Visible = False
    lblBase_Loc.Visible = False
    
    With cmdCapInfo
        .Enabled = False
        .Visible = False
    End With
    
    With cmdBaseInfo
        .Enabled = False
        .Visible = False
    End With
    
    
End Sub

