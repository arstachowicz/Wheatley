VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmENGINEER"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim sSubFrm As String
Dim sFrm As String
Dim lMove As Long

Private Sub cmd_01_ADD_Click()
    sFrm = "fmpart_01_new"
    lMove = 0
    Call browseFrm(lMove)
End Sub

Private Sub cmd_01_EDIT_Click()
    sFrm = "fmpart_01_EDIT"
    lMove = 1
    Call browseFrm(lMove)
End Sub

Private Sub Command133_Click()
    sFrm = "fmpart_01_BROWSE"
    lMove = 3
    Call browseFrm(lMove)
End Sub

Private Sub cmbAction_BeforeUpdate(Cancel As Integer)
    Call cmbView_AfterUpdate
    
End Sub

Private Sub cmbView_AfterUpdate()
'Build path based on combobox selections
If (cmbView <> "") Or (cmbAction <> "") Then

    sFrm = "fm"
    '1;"Electropolishing";2;"Leak Check";3;"Press Fixture";4;"Passivation";5;"01 Parts";6;"07 Parts";
    '7;"Talon Parts";8;"Electrodes";9;"Supervisors";10;"Laboratory"
    With cmbView
        If .Value = 1 Then
            sFrm = sFrm & "EP"
        ElseIf .Value = 2 Then
            sFrm = sFrm & "LEAKCHECK"
        ElseIf .Value = 3 Then
            sFrm = sFrm & "PRESS"
        ElseIf .Value = 4 Then
            sFrm = sFrm & "PASSIVATION"
        ElseIf .Value = 5 Then
            sFrm = sFrm & "PART_01"
        ElseIf .Value = 6 Then
            sFrm = sFrm & "PART_07"
        ElseIf .Value = 7 Then
            sFrm = sFrm & "PARTNUM"
        ElseIf .Value = 8 Then
            sFrm = sFrm & "PART_01_ELECTRODE"
        ElseIf .Value = 9 Then
            sFrm = sFrm & "SUPERVISOR"
        ElseIf .Value = 10 Then
            sFrm = sFrm & "LABORATORIES"
        ElseIf .Value = 11 Then
            sFrm = sFrm & "BATH"
        End If
    End With
    
    With cmbAction
        If .Value = 1 Then
            lMove = 0
            sFrm = sFrm & "_NEW"
        ElseIf .Value = 2 Then
            lMove = 1
            sFrm = sFrm & "_EDIT"
        ElseIf .Value = 3 Then
            lMove = 3
            sFrm = sFrm & "_BROWSE"
        End If
    End With
    
    Call browseFrm
    
End If

End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Engineer View"

End Sub

Private Sub browseFrm()
On Error GoTo browseErr:
    sSubFrm = Me.Parent.Name & ".NavigationSubform>fmENGINEER.ChildForm"
    DoCmd.BrowseTo acForm, sFrm, sSubFrm, "", "", lMove
    
err_Exit:
    Exit Sub
    
browseErr:
    MsgBox "There isn't a form available for these selections."
End Sub


