VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSURFACE_ANALYSIS_XPS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Command396_Click()

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
    End If
    
End Sub

Private Sub Form_Load()
    timeDate.SetFocus
End Sub

Private Sub rnd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
