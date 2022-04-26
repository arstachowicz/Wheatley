VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmDI_WATER"
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

    If (ckIncomplete("time*", Me, False, 2) = True) Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, "Missing Info"
        
        If (IsNull(timeDate) = True) Then
            timeDate.SetFocus
        Else:
            timeHour.SetFocus
        End If
        
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory.", vbOKOnly, "Missing Info"
        laboratory.SetFocus
    Else:
        If ckIncomplete("txt*", Me, True, 1) = False Then
            DoCmd.GoToRecord , "", acNewRec
            MsgBox "Successfully added.", vbOKOnly
            Call Form_Load
        End If
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
     lblNEXT.Caption = nextTestDate(16)
End Sub

Private Sub Page1154_Click()
    Nickel.SetFocus
    
End Sub
