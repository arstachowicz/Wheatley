VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmFUMEHOODS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmbChemical_AfterUpdate()
    'jump to next field
    If IsNull(cmbName) = False Then
        txtVelocity.SetFocus
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
    strSQL = comboBoxLine(lineID)

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

Dim velo As Double
Dim cVelo As Double
Dim stSQL As String
Dim taskTable As String
Dim SPCR As String
Dim taskID As Long

'enter values
taskID = 1

'pull the name of the table and any other information
On Error GoTo lookupErr

taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
SPCR = ", "

'check for missing values
On Error GoTo Macro1_Err

If (ckIncomplete("txt*", Me, True, 1) = False) Then
    If (ckIncomplete("cmb*", Me, True, 2) = False) Then
    
        velo = txtVelocity.Value
        
        'check if a possible error was made in typing
        If velo > 1000 Then
            cVelo = Round(velo / 1000, 0)
            Beep
            
            If MsgBox("You entered " & velo & " ft/min. Did you intend to enter " & cVelo & "ft/min?", vbYesNo + vbDefaultButton2 + vbQuestion, "New Data Confirmation") = vbYes Then
                velo = cVelo
            Else:
                txtVelocity.SetFocus
                Exit Sub
            End If
            
        End If
            
        'check that the line is safe for operation
        If velo < 100 Then
            Beep
            MsgBox "The air velocity is below 100 ft/min." & vbCr & "Please alert your supervisor.", vbOKOnly, "Alert!"
        End If
        
        'enter a record into table, whether line is safe or not
        With Me
            stSQL = .cmbLine & SPCR & .cmbChemical & SPCR & velo & SPCR & .cmbName
        End With
        
        Call sqlEntryBuilder(taskTable, stSQL, True)
        Call cmdUndo_Click 'clear lines
        Child133.Requery
    End If
End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    

End Sub

Private Sub cmdUndo_Click()
On Error Resume Next

    Child133.Requery

    With Me
        .cmbName = Null
        .cmbLine = Null
        .cmbLine.RowSource = "SELECT tblLINES.ID, tblLINES.Line From tblLINES ORDER BY tblLINES.Line;"
        .cmbChemical = Null
        .cmbChemical.RowSource = ""
        .txtVelocity = Null
    End With
    
    cmbName.SetFocus
    
    
End Sub

Private Sub Image169_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

MouseCursor (32649)

End Sub
