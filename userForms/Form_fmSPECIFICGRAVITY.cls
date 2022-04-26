VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSPECIFICGRAVITY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public lChem As Long
Public lLine As Long
Public lTask As Long
Public lTech As Long
Public dIdeal As Double
Public dSG As Double
Public tbl As String

Private Sub cmbChemical_AfterUpdate()

    If IsNull(cmbLine) = False Then
        txtTEMP.SetFocus
    End If

End Sub

Private Sub cmbLINE_AfterUpdate()

'update chemical field with change in line field
Dim strSQL As String

lLine = cmbLine.Value
cmbChemical.RowSource = ""
cmbChemical.Value = ""

If IsNull(lLine) = False Then

    On Error GoTo sqlError: 'build a query for the rowsource
    strSQL = comboBoxLine(lLine)

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

Private Sub cmdENTER_Click()

Dim db As DAO.Database
Dim stSQL As String
Dim taskTable As String
Dim SPCR As String
Dim tank As Double
Dim corr As Double

'enter values
Set db = CurrentDb

'pull the name of the table and any other information
On Error GoTo lookupErr

    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & lTask)
    SPCR = ", "

On Error GoTo Macro1_Err

'check that all values were entered
If (ckIncomplete("txt*", Me, True, 2) = False) Then
    If (ckIncomplete("cmb*", Me, True, 2) = False) Then
    
        'check density in case there was a mistake with how it was entered
        dSG = txtDensity.Value
        lChem = cmbChemical.Value
        lTech = cmbName.Value
        dSG = sgCorr
    
        If Not sgRangeCheck(lChem, dSG) Then Exit Sub
        
        'enter record into table
        stSQL = lTech & SPCR & lChem & SPCR & lLine & SPCR & dSG & SPCR & txtMeasTemp.Value & SPCR & txtTEMP.Value
        Call sqlEntryBuilder(taskTable, stSQL, True)
        Call cmdUndo_Click
    End If
End If

db.Close

Macro1_Exit:
    Exit Sub

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub cmdUndo_Click()
On Error Resume Next

    Child182.Requery

    With Me
        .cmbName = Null
        .cmbChemical = Null
        .cmbLine = Null
        .cmbLine.RowSource = "SELECT tblLINES.ID, tblLINES.Line From tblLINES ORDER BY tblLINES.Line;"
        .cmbChemical.RowSource = ""
        .txtTEMP = Null
        .txtDensity = Null
        .txtMeasTemp = Null
    End With
    
    cmbName.SetFocus

End Sub

Private Sub Form_Load()
Dim Temp As Double

    Call cmdUndo_Click
    tbl = "tblCHEMICALS"
    Temp = roomTempFill
    lTask = 2
    
    If Temp <> 0 Then
            txtMeasTemp.Value = roomTempFill
        Else:
            txtMeasTemp.Value = Null
    End If
    
End Sub


Private Sub Image175_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Function sgCorr() As Double
'make correction if information was entered incorrectly
    If dSG >= 10 And dSG < 100 Then
        sgCorr = dSG / 10
    ElseIf dSG >= 100 And dSG < 1000 Then
        sgCorr = dSG / 100
    ElseIf dSG >= 1000 And dSG < 10000 Then
        sgCorr = dSG / 1000
    Else:
        sgCorr = dSG
    End If

End Function

Function sgRangeCheck(ByVal chemID As Long, ByVal dSG As Double) As Boolean
'checks if wrong chemical was accidentally selected

dIdeal = DLookup("[density]", tbl, "[ID]=" & lChem)
sgRangeCheck = True

If dSG > dIdeal Then
    If MsgBox("You entered " & dSG & " g/mL. This is higher than expected. Do you wish to continue?", vbYesNo + vbDefaultButton2 + vbQuestion, "New Data Confirmation") = vbNo Then
            txtDensity.SetFocus
            sgRangeCheck = False
    End If
    
End If
    
End Function

Function concCorr()
'Tells user how much acid/water to add to sink in order to make the appropriate adjustments\
Dim rs As DAO.Recordset
Dim dBarrel As Double
Dim cBarrel As Double
Dim mWt As Double
Dim dUp As Double
Dim dDown As Double
Dim cUp As Double
Dim cDown As Double
Dim consta As Double
Dim dMol As Double

dBarrel = dIdeal 'density of chemical out of barrel
Set rs = OpenRecordset(tbl)

    With rs
        .MoveFirst
        
        Do Until .EOF
            If !ID = lChem Then
                cBarrel = !concentration
                mWt = !molecularweight
                dUp = !opU
                dDown = !opU
            End If
        Next
        
        .Close
    End With

'Convert values to molarity
    
    'check that upper and lower bounds are in percentages
    If (dUp < 1) And (dDown < 1) Then
        consta = (cBarrel * dBarrel) * 1000 / mWt
        cDown = consta * dDown
        cUp = consta * dUp
    End If

    dMol = (dSG - 1) / 0.28469 'linear relationship assumed between molarity vs specific gravity

    If dMol < cDown Then 'if below limit (add acid)
    
    ElseIf dMol > cUp Then 'if above limit (add water)
    
    End If
End Function

