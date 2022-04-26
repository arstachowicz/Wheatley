VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSURFACE_QUALITY_IC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Command121_Click()
On Error Resume Next
    DoCmd.RunCommand acCmdUndo
    timeDate.SetFocus
    
End Sub

Private Sub Command51_Click()
On Error GoTo Macro1_Err

    If IsNull(timeDate) = True Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, "Missing Info"
        timeDate.SetFocus
        Exit Sub
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory.", vbOKOnly, "Missing Info"
        laboratory.SetFocus
        Exit Sub
    
    Else:
        DoCmd.GoToRecord , "", acNewRec
        timeDate.SetFocus
        Call Form_Load
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
Dim taskID As Long
Dim nextDate As Date

taskID = 17 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
End Sub
