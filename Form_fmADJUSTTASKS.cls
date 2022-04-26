VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmADJUSTTASKS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub List66_AfterUpdate()

'Select the record highlighted and display
DoCmd.SearchForRecord , "", acFirst, "[ID] = " & Str(Nz(SCREEN.ActiveControl, 0))

End Sub

