VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMETALS_AAS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmbChemical_AfterUpdate()
    If (IsNull(cmbChemical) = False) Then
        perAcid.SetFocus
    End If
End Sub

Private Sub cmblaboratory_AfterUpdate()
    
    If (IsNull(cmbLaboratory) = False) Then
        cmbLine.SetFocus
    End If
    
End Sub

Private Sub cmbLINE_AfterUpdate()
On Error Resume Next

Dim strSQL As String

If (IsNull(cmbLine) = False) Then

    'build a query for the rowsource
    strSQL = comboBoxLine(cmbLine.Value)

    With Me!cmbChemical
        .RowSource = strSQL
        .Requery
        .SetFocus
    End With
    
End If

End Sub

Private Sub Command345_Click()
On Error GoTo Macro1_Err

Dim stSQL As String
Dim taskTable As String
Dim SPCR As String
Dim sTitle As String
Dim sN As String
Dim taskID As Long
Dim chemID As Long
Dim lineID As Long
Dim lLab As Long

Dim dCu As String
Dim dNi As String
Dim dFe As String
Dim dCr As String
Dim dZn As String
Dim dMo As String
Dim sComm As String

'units
Dim lCu As String
Dim lNi As String
Dim lFe As String
Dim lCr As String
Dim lZn As String
Dim lMo As String

Dim dPer As String
Dim dDen As String


'enter values

    taskID = 5
    SPCR = ", "
    sTitle = "Missing Info"
    sN = "Null"

    If (IsNull(timeDate) = True) Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, sTitle
        timeDate.SetFocus
    ElseIf (IsNull(Copper) = False) And (IsNull(unitCU) = True) Then
        MsgBox "Enter the unit for copper.", vbOKOnly, sTitle
        unitCU.SetFocus
    ElseIf (IsNull(Nickel) = False) And (IsNull(unitNi) = True) Then
        MsgBox "Enter the unit for nickel.", vbOKOnly, sTitle
        unitNi.SetFocus
    ElseIf (IsNull(Iron) = False) And (IsNull(unitFe) = True) Then
        MsgBox "Enter the unit for iron.", vbOKOnly, sTitle
        unitFe.SetFocus
    ElseIf (IsNull(chromium) = False) And (IsNull(unitCr) = True) Then
        MsgBox "Enter the unit for chromium.", vbOKOnly, sTitle
        unitCr.SetFocus
    ElseIf (IsNull(zinc) = False) And (IsNull(unitZn) = True) Then
        MsgBox "Enter the unit for zinc.", vbOKOnly, sTitle
        unitZn.SetFocus
    Else:

    If ckIncomplete("cmb*", Me, True, 2) = False Then
        'pull the name of the table and any other information
        On Error GoTo lookupErr
            taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
            lLab = cmbLaboratory
            lineID = cmbLine
            chemID = cmbChemical
            
            dPer = Nz(perAcid, sN)
            dDen = Nz(density, sN)
            dCu = Nz(Copper, sN)
            dMo = Nz(molybdenum, sN)
            dNi = Nz(Nickel, sN)
            dFe = Nz(Iron, sN)
            dCr = Nz(chromium, sN)
            dZn = Nz(zinc, sN)
            
            
            lCu = Nz(unitCU, sN)
            lNi = Nz(unitNi, sN)
            lFe = Nz(unitFe, sN)
            lCr = Nz(unitCr, sN)
            lZn = Nz(unitZn, sN)
            lMo = Nz(unitMo, sN)
            
        
            sComm = sqlStr(comments)
            
            
        On Error GoTo sqlErr:
            'enter record into table
            stSQL = "#" & timeDate & "#, " & lLab & SPCR & chemID & SPCR & lineID & SPCR & _
                    dPer & SPCR & dDen & SPCR & _
                    dCu & SPCR & lCu & SPCR & _
                    dNi & SPCR & lNi & SPCR & _
                    dFe & SPCR & lFe & SPCR & _
                    dCr & SPCR & lCr & SPCR & _
                    dZn & SPCR & lZn & SPCR & _
                    sN & SPCR & sN & SPCR & _
                    dMo & SPCR & lMo & SPCR & _
                    sComm
                    
            Call sqlEntryBuilder(taskTable, stSQL, False)
            Call startClear
            cmbLine.SetFocus
            Child435.Requery
     End If
    End If


Macro1_Exit:
    Exit Sub

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
sqlErr:
    MsgBox "An error occurred when entering the data to " & taskTable & ". Check the SQL string for errors. The record has not be saved."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    
End Sub

Private Sub Command346_Click()
On Error Resume Next
'clears all fields, including values saved from previous entries

    timeDate.SetFocus
    Child435.Requery
    
    timeDate = Null
    cmbLaboratory = Null
    
    Call startClear
    
    unitCU = Null
    unitMo = Null
    unitNi = Null
    unitFe = Null
    unitCr = Null
    unitZn = Null
  
End Sub

Private Sub startClear()

'clears some of the fields, but leaves others filled for faster data entry
    cmbLine = Null
    perAcid = Null
    density = Null
    Copper = Null
    Nickel = Null
    Iron = Null
    chromium = Null
    zinc = Null
    molybdenum = Null
    comments = Null
    
    With cmbChemical
        .Value = Null
        .RowSource = ""
    End With
    
End Sub


Private Sub Form_Load()

On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Metal Content Analysis"
    Call Command346_Click

End Sub

Private Sub imgMAP_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Copper_LostFocus()
    Call unitFieJump("unitCu", "chromium")
End Sub

Private Sub chromium_LostFocus()
    Call unitFieJump("unitCr", "iron")
End Sub
Private Sub Iron_LostFocus()
    Call unitFieJump("unitFe", "molybdenum")
End Sub

Private Sub molybdenum_LostFocus()
    Call unitFieJump("unitMo", "nickel")
End Sub

Private Sub Nickel_LostFocus()
    Call unitFieJump("unitNi", "zinc")
End Sub
Private Sub zinc_LostFocus()
    Call unitFieJump("unitZn", "comments")
End Sub

Private Sub unitFieJump(ByVal sUn As String, ByVal sNext As String)

'sUn = corresponding unit field
'sNext = the next field, actual jump command

    With Me
        If (IsNull(.Controls(sUn)) = False) Then
            .Controls(sNext).SetFocus
        End If
    End With
    
End Sub




