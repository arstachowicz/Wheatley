VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmULTRASONICS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmbName_AfterUpdate()

    'jump to next field
    If IsNull(cmbName) = False Then
        cmbTank.SetFocus
    End If
    
End Sub

Private Sub cmbTank_AfterUpdate()
    'jump to next field
    If IsNull(cmbTank) = False Then
        txtTEMP.SetFocus
    End If
    
End Sub

Private Sub Command151_Click()

Dim stSQL As String
Dim SPCR As String
Dim taskTable As String
Dim i As Long
Dim taskID As Long

'enter values
taskID = 8

On Error GoTo lookupErr
    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    SPCR = ", "

On Error GoTo Macro1_Err

'checks that environment information was entered
If (ckIncomplete("cmb*", Me, True, 2) = False) Then
    If (ckIncomplete("txt*", Me, True, 2) = False) Then
        
        'generate SQL
        With Me
            stSQL = .cmbBUILDING & SPCR & .cmbName & SPCR & .cmbTank & SPCR & .txtTEMP
            
            For i = 1 To 9
                stSQL = stSQL & SPCR & .Controls("txtPos" & i).Value
            Next
        End With
            
        'record and clear values
        Call sqlEntryBuilder(taskTable, stSQL, True)
        Call Command152_Click
    End If
End If
    
Macro1_Exit:
    Exit Sub

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Command152_Click()
On Error Resume Next
Dim i As Long

'clear all boxes
    cmbBUILDING = Null
    cmbName = Null
    cmbTank = Null
    txtTEMP = Null
    
    For i = 1 To 9
        Me.Controls("txtPos" & i) = Null
    Next

    cmbBUILDING.SetFocus
    Child133.Requery
    
End Sub

Private Sub imgHelp_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MouseCursor (32649)
End Sub

Private Sub Text650_AfterUpdate()
    
    'jump to next field
    If IsNull(Text650) = False Then
        cmbName.SetFocus
    End If
    
End Sub
