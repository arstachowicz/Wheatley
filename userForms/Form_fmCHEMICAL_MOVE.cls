VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmCHEMICAL_MOVE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmbAction_AfterUpdate()
    If cmbAction.Value = 1 Then
        cmbLine_Final.Visible = True
        cmbLine_Final.SetFocus
    Else:
        cmbLine_Final.Visible = False
    End If
    
End Sub

Private Sub cmbCHEM_AfterUpdate()

    'jump to next field
    If IsNull(cmbLine) = False Then
        txtVolume.SetFocus
    End If
    
End Sub

Private Sub cmbLINE_AfterUpdate()

'Update line field with change in chemical
Dim strSQL As String
Dim lineID As Long

lineID = cmbLine.Value
cmbCHEM.RowSource = ""
cmbCHEM.Value = ""

If IsNull(lineID) = False Then

    On Error GoTo sqlError:
    strSQL = comboBoxLine(lineID)
    
    On Error GoTo err1:
    With Me!cmbCHEM
        .RowSource = strSQL
        .Requery
    End With
    
        'jump to next field
        cmbCHEM.SetFocus
    
    
Else:
    With Me!cmbLine
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

Private Sub cmbTECH_AfterUpdate()

    'jump to next field
    If IsNull(cmbTech) = False Then
        cmbLine.SetFocus
    End If
    
End Sub

Private Sub cmdENTER_Click()

Dim db As DAO.Database
Dim stSQL As String
Dim taskTable As String
Dim msgTitle1 As String
Dim SPCR As String

'numbers
Dim taskID As Long
Dim chemID As Long
Dim unit As Long
Dim tranLine As Long
Dim vol As Double

'booleans
Dim drain As Boolean
Dim added As Boolean
Dim transferred As Boolean

'enter values
Set db = CurrentDb
    
On Error GoTo lookupErr
    taskID = 22
    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

On Error GoTo Macro1_Err
    msgTitle1 = "Missing Info"
    SPCR = ", "

If IsNull(cmbTech) = True Then
        MsgBox "Enter the name of the technician completing the task.", vbOKOnly, msgTitle1
        cmbTech.SetFocus
    ElseIf IsNull(cmbCHEM) = True Then
        MsgBox "Enter the chemical that is being manipulated.", vbOKOnly, msgTitle1
        cmbCHEM.SetFocus
    ElseIf IsNull(cmbLine) = True Then
        MsgBox "Enter the line of chemical's location. If chemical is being transferred to a different line, enter the original location here.", vbOKOnly, msgTitle1
        cmbLine.SetFocus
    ElseIf (IsNull(txtVolume) = True) Or (IsNumeric(txtVolume) = False) Then
        MsgBox "Enter the amount of chemical (in volume) being moved.", vbOKOnly, msgTitle1
        txtVolume.SetFocus
    ElseIf (IsNull(cmbUnit) = True) Then
        MsgBox "Enter the amount of chemical (in volume) being moved.", vbOKOnly, msgTitle1
        txtVolume.SetFocus
    ElseIf (IsNull(cmbAction) = True) Then
        MsgBox "Enter the action being performed on the chemical.", vbOKOnly, msgTitle1
        cmbAction.SetFocus
    ElseIf (cmbAction.Value = 1) And ((IsNull(cmbLine_Final) = True) Or IsNumeric(cmbLine_Final) = False) Then 'if transferred is selected as an action, then check if value was entered
        MsgBox "Enter the location of chemical after the transfer.", vbOKOnly, msgTitle1
        cmbLine_Final.SetFocus
    Else:
        chemID = CLng(cmbCHEM.Value)
        vol = CDbl(txtVolume.Value)
        unit = cmbUnit.Value
        tranLine = Nz(cmbLine_Final.Value, 0)
        
        With cmbAction 'assign checked box values
        If .Value = 1 Then
                transferred = True
                drain = False
                added = False
            ElseIf .Value = 2 Then
                transferred = False
                drain = False
                added = True
            ElseIf .Value = 3 Then
                transferred = False
                drain = True
                added = False
        End If
        End With
        
        'unit corrections to convert values to gallons
        If unit = 2 Then 'if reported in liters
            vol = Round(vol * 0.264172, 3)
        ElseIf unit = 3 Then 'if reported in milliliters
            vol = Round(vol * 0.000264172, 3)
        End If
        
        'enter record into table
        stSQL = "Insert into " & taskTable & " (techName, chemical, line, volume, movedline, transferred, drained, added) " & _
            "Values (" & cmbTech.Value & SPCR & chemID & SPCR & cmbLine.Value & SPCR & vol & SPCR & tranLine & SPCR & transferred & SPCR & drain & SPCR & added & ");"
            
        db.Execute stSQL, dbFailOnError
        Child93.Requery
        Call cmdUndo_Click 'clear fields
        
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
    
    'clear boxes
    With Me
        !cmbTech = Null
        !cmbLine = Null
        !cmbCHEM = Null
        !cmbCHEM.RowSource = ""
        !txtVolume = Null
        !cmbUnit.Value = 1
        !cmbAction = Null
        !cmbLine_Final = Null
        !cmbLine_Final.Visible = False
        !cmbTech.SetFocus
    End With

End Sub

Private Sub txtVolume_AfterUpdate()
    'jump to next field
    If (IsNull(cmbUnit) = True) Then
        cmbUnit.SetFocus
    Else:
        cmbAction.SetFocus
    End If
End Sub
