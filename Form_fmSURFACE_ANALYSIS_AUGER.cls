VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSURFACE_ANALYSIS_AUGER"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public taskID As Long

Private Sub cmdENTER_Click()
Dim stSQL As String
Dim taskTable As String
Dim msgTitle1 As String
Dim sP As String
Dim sN As String
Dim sMax As String
Dim bRD As Boolean

Dim dC As String
Dim dCa As String
Dim dCl As String
Dim dCr As String
Dim dCu As String
Dim dFe As String
Dim dMg As String
Dim dNa As String
Dim dNi As String
Dim dNit As String

Dim dOx As String
Dim dPho As String
Dim dK As String
Dim dSi As String
Dim dSul As String
Dim dZn As String

Dim dOxT As String
Dim dCorT As String
Dim dRatio As String
Dim dCarbL As String
Dim dIronL As String

Dim sNotes As String
Dim sMod As String

'pull the name of the table and any other information
On Error GoTo lookupErr

    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    msgTitle1 = "Missing Info"
    sP = ", "
    sN = "Null"

On Error GoTo Macro1_Err:
'check that all values were entered
If IsNull(timeDate) = True Then
        MsgBox "Enter the date the sample was taken/completed.", vbOKOnly, msgTitle1
        timeDate.SetFocus
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory that completed the job.", vbOKOnly, msgTitle1
        laboratory.SetFocus
    ElseIf IsNull(testPart) = True Then
        MsgBox "Enter the part number for the coupon.", vbOKOnly, msgTitle1
        testPart.SetFocus
    Else:
        bRD = RnD
        dC = Nz(carbon, sN)
        dCa = Nz(calcium, sN)
        dCl = Nz(chlorine, sN)
        dCr = Nz(chromium, sN)
        dCu = Nz(Copper, sN)
        dFe = Nz(Iron, sN)
        dMg = Nz(magnesium, sN)
        dNi = Nz(Nickel, sN)
        dNit = Nz(nitrogen, sN)
        dOx = Nz(oxygen, sN)
        dPho = Nz(phosphorous, sN)
        dK = Nz(potassium, sN)
        dSi = Nz(silicon, sN)
        dNa = Nz(sodium, sN)
        dSul = Nz(sulfur, sN)
        dZn = Nz(zinc, sN)
        
        dOxT = Nz(oxideThick, sN)
        dCorT = Nz(correctedThick, sN)
        dRatio = Nz(crFeRatio, sN)
        dCarbL = Nz(carbLayer, sN)
        dIronL = Nz(ironLayer, sN)
         
        'if apostrophes are used, keep formating and send as string
        sNotes = Nz(Notes, sN)
        If sNotes <> sN Then
            sNotes = Replace(Notes, "'", "''")
            sNotes = "'" & sNotes & "'"
        ElseIf (sNotes = "") Then
            sNotes = sN
        End If
        
        sMod = Nz(modifications, sN)
        If (sMod <> sN) Then
            sMod = Replace(modifications, "'", "''")
            sMod = "'" & sMod & "'"
        ElseIf (sMod = "") Then
            sMod = sN
        End If
        
        If (IsNull(txtMax) = False) And (IsNull(txtDepth) = False) Then
            sMax = "'" & Trim(txtMax) & " @ " & Trim(txtDepth) & " Å'"
        Else:
            sMax = sN
        End If
        
        On Error GoTo sqlErr:
        'enter record into table
        stSQL = "#" & timeDate & "#, " & laboratory & sP & bRD & sP & sMod & sP & sNotes & sP & testPart & sP & _
                dC & sP & dCa & sP & dCl & sP & dCr & sP & dCu & sP & dFe & sP & dMg & sP & dNi & sP & dNit & sP & dOx & sP & dPho & sP & _
                dK & sP & dSi & sP & dNa & sP & dSul & sP & dZn & sP & dOxT & sP & dCorT & sP & dRatio & sP & sMax & sP & dCarbL & sP & dIronL

        Call sqlEntryBuilder(taskTable, stSQL, False)
        Call cmdUndo
        MsgBox "Successfully added record."
        
End If

Macro1_Exit:
    Exit Sub
    
lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
sqlErr:
    MsgBox "An error occurred when building the SQL. The record has not been saved."
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
Dim nextDate As Date

    taskID = 20 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    timeDate.SetFocus

End Sub

Private Sub rnd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub testPart_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As Recordset
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

Private Sub cmdUndo()
'clear all fields

    laboratory = Null
    testPart = Null
    modifications = Null
    Notes = Null
    RnD = False
    
    carbon = Null
    calcium = Null
    chlorine = Null
    chromium = Null
    Copper = Null
    Iron = Null
    magnesium = Null
    Nickel = Null
    nitrogen = Null
    oxygen = Null
    phosphorous = Null
    potassium = Null
    silicon = Null
    sodium = Null
    sulfur = Null
    zinc = Null
    
    oxideThick = Null
    correctedThick = Null
    crFeRatio = Null
    carbLayer = Null
    ironLayer = Null
    txtMax = Null
    txtDepth = Null
       

    With timeDate
        .Value = Null
        .SetFocus
    End With
               
       
End Sub
