VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPH"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmbName_AfterUpdate()

    'jump to next field
    If IsNull(cmbName) = False Then
        txtPH.SetFocus
    End If
    
End Sub

Private Sub Command26_Click()
On Error GoTo Macro1_Err
Dim db As DAO.Database
Dim taskID As Long
Dim stSQL As String
Dim SPCR As String
Dim msgTitle1 As String
Dim taskTable As String

'enter values
Set db = CurrentDb
taskID = 6

'pull the name of the table and any other information
On Error GoTo lookupErr

    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    msgTitle1 = "Missing Info"
    SPCR = ", "
    
On Error GoTo Macro1_Err

    If IsNull(cmbName) = True Then
        MsgBox "Select a name.", vbOKOnly, msgTitle1
        cmbName.SetFocus
    Else:
        If (ckIncomplete("txt*", Me, True, 2) = False) Then
            On Error GoTo sqlErr:
            With Me
                stSQL = .cmbName & SPCR & .txtPH & SPCR & .txtDrained
            End With
            
            Call sqlEntryBuilder(taskTable, stSQL, True)
            Call Command31_Click
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

sqlErr:
    MsgBox "An error occurred when entering the record into " & taskTable & ". This record has not been recorded."
    Resume Macro1_Exit
    
            
End Sub

Private Sub Command31_Click()
On Error Resume Next
    
    With cmbName
        .Value = Null
        .SetFocus
    End With
    
    txtPH = Null
    txtDrained = Null
    childForm.Requery
    
End Sub
