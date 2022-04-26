VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmTITRATION"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public naOHConc As Double
Public perWt As Double
Public perVol As Double
Public mwHNO3 As Double
Public wtBarrel As Double
Public db As DAO.Database

'rest are used to check adjustment values
Public corr As Double
Public chemID As Long
Public lineID As Long
Public techID As Long
Public H2Oden As Double


Private Sub cmbChemical_AfterUpdate()
On Error Resume Next
        
    Call concFields
    
    'jump to next field
    If (IsNull(txtTEMP) = True) And (IsNull(cmbLine) = False) Then
        txtTEMP.SetFocus
    ElseIf (IsNull(txtNaOH) = True) Then
        txtNaOH.SetFocus
    Else:
        txtSampleVol.SetFocus
    End If
    
End Sub

Private Sub cmbLINE_AfterUpdate()

    'update chemical field with change in line field
Dim strSQL As String
Dim lineID As Long

lineID = cmbLine.Value
cmbChemical.RowSource = ""
cmbChemical.Value = ""

If IsNull(lineID) = False Then

    On Error GoTo sqlError:
    strSQL = "SELECT tblCHEMICALS.ID, tblCHEMICALS.chemical, tblLINES.ID, tblCHEMICALS.titrationTesting " & _
            "FROM tblCHEMICALS INNER JOIN (tblLINES INNER JOIN tblLOCATIONS ON tblLINES.ID = tblLOCATIONS.LINEID) ON tblCHEMICALS.ID = tblLOCATIONS.CHEMID " & _
            "WHERE(((tblLINES.ID) = " & lineID & ") And ((tblCHEMICALS.titrationTesting) = True)) " & _
            "ORDER BY tblCHEMICALS.chemical;"

    On Error GoTo err1:
    With Me!cmbChemical
        .RowSource = strSQL
        .Requery
    End With
    
    'jump to next field
    cmbChemical.SetFocus
    
Else:
    With Me!cmbChemical
        .Requery
    End With
End If


'error handling
macro_exit:
    Exit Sub
    
err1:
    MsgBox "An unknown error occurred when executing the code after building the query."
    Resume macro_exit
    
sqlError:
    MsgBox "An unknown error occurred when executing the SQL."
    Resume macro_exit
    
End Sub

Private Sub cmbName_AfterUpdate()
    'jump to next field
    If IsNull(cmbName) = False Then
        cmbLine.SetFocus
    End If
    
End Sub

Private Sub cmdADD_Click()

Dim stSQL As String
Dim SPCR As String
Dim bAdd As Boolean
Dim tbl As String
Dim rTbl1 As String
Dim rTbl2 As String
Dim rTbl3 As String
Dim frm As String

'for building message verifying added amounts
Dim sTech As String
Dim sChem As String
Dim sLine As String

Set db = CurrentDb
tbl = "tblCHEMICALs_MOVE"
rTbl1 = "tblTECHNAME"
rTbl2 = "tblCHEMICALS"
rTbl3 = "tblLines"
frm = "fmCHEMICAL_MOVE"
SPCR = ", "

    If (IsEmpty(techID) = False) And (IsEmpty(chemID) = False) And (IsEmpty(lineID) = False) Then
        'enter into chemical move table that an adjustment was made
        If MsgBox("Have you made the appropriate adjustments?", vbYesNo + vbDefaultButton2 + vbQuestion, "Adjustment Made?") = vbYes Then
                On Error GoTo lookupErr:
                    sTech = DLookup("[FIRSTnAME]", rTbl1, "[ID]=" & techID)
                    sChem = DLookup("[chemical]", rTbl2, "[ID]=" & chemID)
                    sLine = DLookup("[line]", rTbl3, "[ID]=" & lineID)
                'you made adjustments, but do they match the suggested volume?
                If MsgBox("Is the following accurate?" & vbCrLf & _
                            "Tech: " & sTech & vbCrLf & _
                            "Chemical: " & sChem & vbCrLf & _
                            "Line: " & sLine & vbCrLf & _
                            "Added: True" & vbCrLf & _
                            "Volume Added: " & Round(corr, 2) & " gal", vbYesNo + vbDefaultButton2 + vbQuestion, "Adjustment Made?") = vbYes Then
                            
                            On Error GoTo sqlErr:
                            
                            bAdd = True
                            corr = Round(corr, 4)
                            stSQL = "Insert into " & tbl & " (chemical, line, volume, added, techname) " & _
                                    "Values (" & chemID & SPCR & lineID & SPCR & corr & SPCR & bAdd & SPCR & techID & ");"
                            db.Execute stSQL, dbFailOnError
                Else:
                    DoCmd.OpenForm frm, acNormal, , , acFormAdd, acDialog
                    cmdADD.Enabled = False
                End If
            
            lblAdjust.Caption = "Enter data for correction information."
            
        End If
    Else:
    
        If MsgBox("The auto-adjustment is not available at this time. Would you like to be navigated to the chemical transfer form?", vbYesNo + vbDefaultButton2 + vbQuestion, "Adjustment Made?") = vbYes Then
            DoCmd.OpenForm frm, acNormal, , , acFormAdd, acDialog
        End If
        cmdADD.Enabled = False
        
    End If
    
subExit:
    Exit Sub
    
lookupErr:
    MsgBox "There was an error with DLookup when building the check message.", , "Error"
    Resume subExit
    
sqlErr:
    MsgBox "There was an error when entering the record. The record has not been recorded.", , "Error"
    Resume subExit
    
End Sub

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err

    Dim stSQL As String
    Dim SPCR As String
    Dim sMsgT As String
    
    'store table locator
    Dim taskTable As String
    Dim chemTable As String
    Dim minAcid As Double
    Dim maxAcid As Double
    Dim taskID As Long
    Dim tankVol As Long
    
    Dim ret As Variant
    Dim Temp As Double
    Dim massSol As Double
    Dim concNaOH As Double
    Dim concAcid As Double
    Dim volChem As Double
    
    'titrant info
    Dim volStart As Double
    Dim volEnd As Double
    Dim volTot As Double
    
taskID = 21
tankVol = 11 'gallons

'pull the name of the table and any other information
    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    chemTable = "tblCHEMICALS"
    SPCR = ", "
    sMsgT = "Missing Info"
   
    
If IsNull(cmbName) = True Then
        MsgBox "Select a name.", vbOKOnly, sMsgT
        cmbName.SetFocus
    ElseIf IsNull(cmbChemical) Then
        MsgBox "Select the chemical.", vbOKOnly, sMsgT
        cmbChemical.SetFocus
    ElseIf (IsNull(cmbLine) = True) Then
        MsgBox "Select the line.", vbOKOnly, sMsgT
        cmbLine.SetFocus
    ElseIf IsNull(txtTEMP) = True Then
        MsgBox "Enter the temperature of the chemical at time of measurement.", vbOKOnly, sMsgT
        txtTEMP.SetFocus
    ElseIf IsNull(concNaOH) = True Then
        MsgBox "Enter the NaOH concentration. Use assistant for calculations.", vbOKOnly, sMsgT
        txtNaOH.SetFocus
    ElseIf IsNull(txtSampleVol) = True Then
        MsgBox "Enter the volume of sample in milliliters.", vbOKOnly, sMsgT
        txtSampleVol.SetFocus
    ElseIf IsNull(txtTitrant_start) = True Then
        MsgBox "Enter the amount of titrant used in milliliters.", vbOKOnly, sMsgT
        txtTitrant_start.SetFocus
    ElseIf IsNull(txtTitrant_End) = True Then
        MsgBox "Enter the amount of titrant used in milliliters.", vbOKOnly, sMsgT
        txtTitrant_End.SetFocus
    Else:

        techID = cmbName
        chemID = cmbChemical 'ID of chemical
        lineID = cmbLine
        Temp = CDbl(txtTEMP) 'temperature in fahrenheit
        massSol = CDbl(Nz(txtMass, 0)) 'if solution was weighed
        concNaOH = CDbl(txtNaOH) 'concentration of NaOH (after standardization)
        volStart = CDbl(txtTitrant_start) 'start point of titrant
        volEnd = CDbl(txtTitrant_End) 'end point of titrant
        volChem = CDbl(txtSampleVol) 'amount of analyte
        volTot = volEnd - volStart
        concAcid = volTot * concNaOH / volChem 'molarity

        
        'entry error check
        If massSol > 25 Then
            MsgBox "Tare the container and record ONLY the weight of the acid. See work instructions for additional information.", vbOKOnly, "Process Error"
            txtMass.SetFocus
            Exit Sub
        ElseIf volStart >= volEnd Then
            MsgBox "Check the values entered for titrant start and end. End values showed be larger than start values."
            Exit Sub
        End If
        
        'converts specific gravity to grams
        If tglSG = True Then
            massSol = volChem * massSol * H2Oden
        End If
        
        'checks for outliers based on known Den vs Vol% relationship
            Call outlierFinder(massSol, volChem)
        
        On Error GoTo Macro1_Err:
        'determine operating range
        minAcid = DLookup("[opL]", chemTable, "[ID] = " & chemID) * 100
        maxAcid = DLookup("[opU]", chemTable, "[ID] = " & chemID) * 100
        
        cmdADD.Enabled = False
        
        'determine if adjustments are necessary
        If (Round(perVol, 4) < (minAcid)) Or (Round(perVol, 4) > (maxAcid)) Then
            ret = InputBox("Adjustments are necessary. What is the approximate volume (gallons) of acid in the sink?", "Out of Spec", tankVol)
            
            If ret <> "" Then 'if user hits cancel, exit out of entire code
                Call adjuster(ret, maxAcid, chemTable, concAcid)
            Else:
                MsgBox "Data not recorded."
                Exit Sub
            End If
        Else: 'if no adjustments, than adjust captions
            lblAdjust.Caption = "No adjustments necessary."
        End If
        
        
        stSQL = "Insert into " & taskTable & " (techName, chemical, line, temp, massSol, concNaOH, volTitrant, volSample) " & _
                "Values (" & techID & SPCR & chemID & SPCR & cmbLine.Value & SPCR & Temp & SPCR & massSol & SPCR & concNaOH & SPCR & volTot & SPCR & volChem & ");"
            
        CurrentDb.Execute stSQL, dbFailOnError
        
        Child688.Requery
        Call emptyFields
        Call tempLookUp
        cmbName.SetFocus
        
End If


Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub adjuster(ByVal tank As Double, ByVal targetConcVol As Double, ByVal tblID As String, ByVal Mol As Double)
'tank is current volume in tank (in gallons), targetConcVol is target vol%, chemID is the chemical, tblID is where chemical info is stored, Mol is actual conc in mol/L
Dim rs As DAO.Recordset
Dim tarMol As Double 'target concentration in mol/L
Dim barVol As Double
Dim line As Long
Dim barDen As Double
Dim barMW As Double
Dim barConcW As Double
Dim barMol As Double
Dim chemName As String

Set rs = CurrentDb.OpenRecordset(tblID)

On Error GoTo lookupErr:
    'for caption creation and correction calculations
    
    With rs
        .MoveFirst
        Do Until .EOF
            If !ID = chemID Then
                barDen = !density
                barConcW = !concentration
                barMW = !molecularweight
                chemName = !chemical
                Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    line = DLookup("[line]", "tblLINES", "[ID] = " & lineID)
    
    'checks if percentage and adjusts
    If barConcW < 1 Then
        barConcW = barConcW * 100
    End If
    
On Error GoTo calcErr:
    tarMol = targetConcVol * barDen * barConcW / (barMW * 10)
    barMol = barConcW * barDen * 10 / barMW
    
    'tells whether to add acid or water, depending if over or under concentration
    If Mol < tarMol Then
        corr = (Mol - tarMol) / (tarMol - barMol)
        cmdADD.Enabled = True
    ElseIf Mol > tarMol Then
        corr = (Mol - tarMol) / (tarMol)
        chemName = "DI water"
        cmdADD.Enabled = False 'recording not necessary if water added, only if chem added
    End If
    
    corr = tank * corr
    barVol = Round(corr, 2)
    
    lblAdjust.Caption = "Add " & barVol & " gal of " & chemName & " to line " & line & "."
    
err_Exit:
    Exit Sub

lookupErr:
    MsgBox "An issue with DLookup when searching the table, " & tblID & "."
    Resume err_Exit
    
calcErr:
    MsgBox "There was a problem when making calculations."
    Resume err_Exit

End Sub

Private Sub cmdUndo_Click()

    Call emptyFields
    Call tempLookUp
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Call tglMass_Click
    Call tempLookUp
    cmbName.SetFocus
    cmdADD.Enabled = False
    lblAdjust.Caption = "Enter data for correction information."
    
End Sub
Private Sub tempLookUp()
Dim Temp As Double

    Temp = roomTempFill
    
    If Temp <> 0 Then
            txtTEMP.Value = roomTempFill
        Else:
            txtTEMP.Value = Null
    End If
    
End Sub
Private Sub Image175_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglMass_Click()
    tglSG = False
    tglMass = True
    Label319.Caption = "Solution Mass:"
    Label433.Caption = "g"
    txtMass.SetFocus
    
End Sub

Private Sub tglMass_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglSG_Click()
Dim tbl As String
Dim ID As Long
Dim idLine As Long
Dim idChem As Long
Dim sg As Double

    tbl = "tblSPECIFICGRAVITY"
    
    tglSG = True
    tglMass = False
    Label319.Caption = "Solution Spec. Gravity:"
    Label433.Caption = "g/mL"
    
    If (IsNull(cmbLine) = False) And (IsNull(cmbChemical) = False) Then 'autofill specific gravity if already measured
        idLine = cmbLine.Value
        idChem = cmbChemical.Value
        ID = DMax("[ID]", tbl, "[timeDate] = #" & Date & "# And [chemical] = " & idChem & " and [line] = " & idLine)
        
        If IsNull(ID) = False Then
            sg = DLookup("[density]", tbl, "[id] = " & ID)
            txtMass.Value = sg
            txtNaOH.SetFocus
        End If
        
    End If
    
    txtMass.SetFocus
    
End Sub

Private Sub tglSG_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub txtMass_AfterUpdate()
    Call concFields
    
    If txtMass.Value > 25 Then
        MsgBox "Tare the container and record ONLY the weight of the acid. See work instructions for additional information.", vbOKOnly, "Process Error"
        txtMass.SetFocus
    End If
    
End Sub

Private Sub txtNaOH_AfterUpdate()

    If (IsNull(txtKHP_Mass) = True) Or (IsNull(txtKHP_Start) = False) Or (IsNull(txtKHP_End) = False) Then
        naOHConc = txtNaOH.Value
    End If
    
    Call concFields
    
End Sub

Private Sub txtSampleVol_AfterUpdate()
    Call concFields
    
    If (IsNull(txtSampleVol) = False) Then
        txtMass.SetFocus
    End If
    
End Sub

Private Sub txtTitrant_end_AfterUpdate()

    Call concFields


End Sub

Private Sub concFields()

'populate the display to show concentrations before entering data

    Dim massSol As Double
    Dim acidConc As Double
    Dim acidWt As Double
    Dim volChem As Double
    Dim rawCalc As Double
    
    'titrant information
    Dim volStart As Double
    Dim volEnd As Double
    Dim volTitrant As Double
    
    Dim chemIDs As Long
    Dim moles As Long
    Dim tblID As String
    
    tblID = "tblCHEMICALS"
    moles = 1 'HNO3 to NaOH mole ratio 1:1
    chemID = Nz(cmbChemical.Value, 0) 'what chemical is being analyzed
     
     'checks that a nonzero value wasn't entered for critical calculations
    If (txtMass.Value <= 0) And (txtNaOH.Value <= 0) And (txtSampleVol.Value <= 0) Then
        Exit Sub
    End If
    
    
    If (IsNull(txtNaOH) = False) And (IsNull(txtSampleVol) = False) And (IsNull(txtNaOH) = False) And (IsNull(txtTitrant_start) = False) And (IsNull(txtTitrant_End.Value) = False) And chemID <> 0 Then
        'Pull necessary data
        On Error GoTo err1:
            wtBarrel = DLookup("[concentration]", tblID, "[ID] = " & chemID) 'pull concentration of raw chemical
            volStart = CDbl(txtTitrant_start.Value) 'starting mL of titrant
            volEnd = CDbl(txtTitrant_End.Value) 'end mL of titrant
            
            If wtBarrel > 100 Then 'convert a percentage rep. by a whole number to decimal form
                wtBarrel = wtBarrel / 100
            End If
            
            If (volStart < volEnd) Then
                volTitrant = volEnd - volStart 'subtract the prev. 2 to find total mL
                volChem = Nz(CDbl(txtSampleVol.Value)) 'amount of analyte added in mL
                
                'if a value was only entered into text field and not precalculated, pull that value
                If (IsNull(naOHConc) = True) Or (naOHConc = 0) Then
                    naOHConc = CDbl(Nz(txtNaOH.Value))
                End If
                
                rawCalc = volTitrant * naOHConc * moles / 1000 'in moles of acid
                Call massDetermination(chemID, rawCalc, volChem)
                acidConc = rawCalc * 1000 / volChem 'molarity
                
                    'checks if impossible values were calculated and advises user to double-check entry
                If perVol > 100 Then
                    MsgBox "Check the values entered. The volume percent of acid is over 100%.", vbOKOnly, "Calculation Error"
                    
                ElseIf perWt > (wtBarrel * 100) Then
                        MsgBox "Check the values entered. The weight percent of nitric acid is over stock solution's concentration.", vbOKOnly, "Calculation Error"
                End If
                
                    'display results
                    txtVolPer.Value = Round(perVol, 2)
                    
                    If perWt <> 0 Then
                        txtWtPer.Value = Round(perWt, 2)
                    Else:
                        txtWtPer.Value = "n/a"
                    End If
                    
                    txtHNO3.Value = Round(acidConc, 2)
                    
            Else:
                MsgBox "Cannot run macro because end volume is smaller than start volume."
            End If
 
    End If
    
macro_exit:
    Exit Sub
    
err1:
    MsgBox "There was an error pulling data for chemicals."
    Resume macro_exit
End Sub

Private Sub massDetermination(ByVal chemID As Long, ByVal rawCalc As Double, ByVal volChem As Double)
    'determine concentrations depending on how weight of solution was determined

    Dim rs As DAO.Recordset
    Dim Temp As Double
    Dim massSol As Double
    Dim calMass As Double
    Dim barDen As Double
    Dim tblID As String
    
    On Error GoTo chemErr:
    tblID = "tblCHEMICALS"
    Set rs = CurrentDb.OpenRecordset(tblID)
                
    With rs
        .MoveFirst
        Do Until .EOF
            If !ID = chemID Then
                mwHNO3 = !molecularweight 'pull info on molecular weight of chemical
                wtBarrel = !concentration 'pull concentration of raw chemical
                barDen = !density 'pull concentration of raw chemical
                massSol = CDbl(Nz(txtMass.Value))
                .Close
                Exit Do
            End If
        .MoveNext
        Loop
        .Close
    End With
    
    If (tglMass = True) And (txtMass <> 0) Then
             'solution was weighed on a scale. Density is not necessary
            perWt = rawCalc * mwHNO3 / massSol
            
    ElseIf (tglSG = True) And (txtMass <> 0) Then
            
            'pull density of water to convert SG to density
            On Error GoTo tempErr:
                Temp = CDbl(txtTEMP.Value)
                Temp = (Temp - 32) * (5 / 9) 'convert to Celsius
            
            H2Oden = ((-0.0000031426) * Temp ^ 2) + ((0.00159169) * Temp) + 0.801736 'find density of water, based on density tables, x [=] Celsius temperature
            
            calMass = massSol / H2Oden 'converts SG to density
            calMass = massSol * volChem
            
            'calculations of concentrations
            perWt = rawCalc * mwHNO3 / calMass
            
    End If
    
        On Error GoTo calcErr:
        'percentage corrections
        perVol = (rawCalc * mwHNO3) * 100 / (volChem * wtBarrel * barDen) 'volume of barrel solution to volume of tank
        
        perWt = perWt * 100
       
'error handling
macro_exit:
    Exit Sub
    
tempErr:
    MsgBox "There was an error with pulling temperature information for specific gravity correction."
    Resume macro_exit

chemErr:
    MsgBox "There was an error when pulling information for chemicals."
    Resume macro_exit
    
calcErr:
    MsgBox "There was an error when calculating weight and volume percentages."
    Resume macro_exit
    
End Sub


Private Sub emptyFields()
    Call tempLookUp
    
    cmbLine.Value = Null
    cmbChemical.RowSource = ""
    cmbChemical = Null
    
    txtTEMP = Null
    txtMass = Null
    txtTitrant_start = Null
    txtTitrant_End = Null
    txtSampleVol = Null
    txtWtPer = Null
    txtHNO3 = Null
    txtVolPer = Null
    cmbLine.SetFocus
    
End Sub
Private Sub outlierFinder(ByVal massSol As Double, ByVal volChem As Double)
    'massSol: mass of the sample in grams
    'volChem: volume of initial sample in milliliters
    
    Dim errEqL As Double
    Dim errEqU As Double
    Dim errDen As Double

On Error GoTo outlierErr:

        'checks for outliers based on known Den vs Vol% relationship
        errEqL = (0.00256821538 * perVol) + 1.005620588
        errEqU = (0.00256245098 * perVol) + 1.127820588
        errDen = massSol / volChem
        
        If (errDen < errEqL) Then
            errEqL = Round(errEqL, 4)
            MsgBox "Outlier detected. Density (" & errDen & " g/mL) is under what is expected, " & errEqL & " g/mL."
        ElseIf (errDen > errEqU) Then
            errEqU = Round(errEqU, 4)
            MsgBox "Outlier detected. Density (" & errDen & " g/mL) is over what is expected, " & errEqU & " g/mL."
        End If
        
    Exit Sub
    
outlierErr:
    MsgBox "There was an error when testing for outliers."
    Resume Next
    
End Sub
        
        
Private Sub txtKHP_End_AfterUpdate()

    Call titrantConc
    Call concFields
    txtSampleVol.SetFocus
    
    
End Sub

Private Sub txtKHP_Start_AfterUpdate()
    Call titrantConc
    Call concFields
    txtKHP_End.SetFocus
    
End Sub
Private Sub txtKHP_Mass_AfterUpdate()

    Call titrantConc
    Call concFields
    txtKHP_Start.SetFocus
    
End Sub

Private Sub titrantConc()


    Dim volStart As Double
    Dim volEnd As Double
    Dim volNet As Double
    Dim mwKHP As Double
    Dim massKHP As Double

    'checks that all values are entered for calculating NaOH's concentration
    If (IsNull(txtKHP_Mass) = False) And (IsNull(txtKHP_Start) = False) And (IsNull(txtKHP_End) = False) Then
        
        'molecular weight lookup
         mwKHP = DLookup("[molecularweight]", "tblCHEMICALS", "[ID] = " & 11)

        On Error GoTo dataFormatErr:
            'pull entered values and store
            massKHP = CDbl(txtKHP_Mass.Value)
            volStart = CDbl(txtKHP_Start.Value)
            volEnd = CDbl(txtKHP_End.Value)
            
            'determine net value, check for a mistake
            If volEnd > volStart Then
                volNet = volEnd - volStart
            Else:
                MsgBox "Check the values entered. The end value is not larger than the start volume."
                Exit Sub
            End If
        
        On Error GoTo calcErr:
        naOHConc = (massKHP * 1000) / (mwKHP * volNet) 'determines NaOH concentration
  
        'display NaOH concentration
        txtNaOH.Value = Round(naOHConc, 4)
    
    
    End If

Mac_Exit:
    Exit Sub
dataFormatErr:
    MsgBox "Values entered must be numerical. Check entered values."
    Resume Mac_Exit
calcErr:
    MsgBox "There was a calculation error."
    Resume Mac_Exit
End Sub

Private Sub txtTitrant_start_AfterUpdate()
    Call concFields
End Sub


