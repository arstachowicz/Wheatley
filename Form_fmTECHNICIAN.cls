VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmTECHNICIAN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Technician View"
    Call tglEDIT_Click
End Sub

Private Sub tglAdd_Click()
    tglAdd = True
    tglEDIT = False
    Call tglButton
    
End Sub

Private Sub tglAdd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglEDIT_Click()
    tglEDIT = True
    tglAdd = False
    Call tglButton
End Sub

Private Sub tglEdit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
    
End Sub

Private Sub tglButton()

On Error GoTo Macro11_Err
Dim sForm As String
Dim sPath As String

sForm = "fmTECHNICIAN"
sPath = Me.Parent.Name & ".NavigationSubform>fmTECHNICIAN.ChildForm"

    With CodeContextObject
        If (.tglEDIT = True) Then
            sForm = sForm & "_edit"
            DoCmd.BrowseTo acForm, sForm, sPath, "", "", 1
        Else
            sForm = sForm & "_NEW"
            DoCmd.BrowseTo acForm, sForm, sPath, "", "", 0
        End If
    End With


Macro11_Exit:
    Exit Sub

Macro11_Err:
    'MsgBox Error$
    Resume Macro11_Exit
    
End Sub
