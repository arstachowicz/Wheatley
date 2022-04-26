VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_MONTHLY_CL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim sCap1 As String
Dim sCap2 As String
Dim ctl As Control
Dim sName As String

Sub sCap()
    sCap1 = "Ultrasonic Filter Change"
    sCap2 = "EP Fixtures Checked"
End Sub

Private Sub Check249_Click()

    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap1, Me)
    
End Sub

Private Sub Check249_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Command152_Click()
On Error Resume Next

Call sCap

    With Check249
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    With tglFixtures
         .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    DoCmd.RunCommand acCmdUndo
    cmbName.SetFocus
    
End Sub

Private Sub Command282_Click()
On Error GoTo Macro1_Err
Dim sVal As String
Dim sP As String

sP = ", "
    
    If (ckIncomplete("Check*", Me, True, 1) = False) Then
        If (ckIncomplete("cmb*", Me, True, 2) = False) Then
            sVal = Check249 & sP & cmbPlant & sP & False & sP & cmbName
            Call sqlEntryBuilder("tblMAINTENANCE_MONTHLY_CL", sVal, True)
            MsgBox "Record successfully added."
        End If
    End If
        
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Monthly PM"
    Call sCap
    Call Command152_Click

End Sub

Private Sub tglFixtures_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap2, Me)
End Sub

Private Sub tglFixtures_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
