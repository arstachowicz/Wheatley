VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmTECHNICIAN_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub ckCL_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MouseCursor (32649)
End Sub

Private Sub ckCR_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MouseCursor (32649)
End Sub

Private Sub Employed_Click()

    With Me.Employed
        If (.Value = False) Then
            .Caption = "Not Employed"
        Else:
            .Caption = "Employed"
        End If
    End With
    
End Sub

Private Sub Employed_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub List74_AfterUpdate()
    DoCmd.SearchForRecord , "", acFirst, "[ID] = " & Str(Nz(SCREEN.ActiveControl, 0))
    Call Employed_Click
End Sub
