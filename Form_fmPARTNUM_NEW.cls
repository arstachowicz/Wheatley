VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPARTNUM_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdENTER_Click()
Dim qryName As String
Dim tbl As String
Dim frm As String
Dim sPath As String
Dim sVal As String
Dim sN As String
Dim ctrl As Control

On Error Resume Next
    qryName = "dupPARTNUM"
    tbl = "tblPARTNUM"
    frm = "fmPARTNUM_EDIT"
    sN = "Null"
    sPath = Me.Parent.Parent.Name & ".NavigationSubform>fmENGINEER.ChildForm"
    Set ctrl = Me.Controls!txtPARTNUM

    If IsNull(Trim(ctrl.Value)) = True Then
        MsgBox "Enter a part number.", vbOKOnly, "Missing Info"
        ctrl.SetFocus
    Else:
        sVal = "'" & Trim(ctrl.Value) & "', " & Nz(txtInner, sN) & ", " & Nz(txtOuter, sN)
        Call dupPartEntry(qryName, ctrl, tbl, sVal, frm, sPath)
    End If

End Sub

Private Sub Form_Load()
    
   'clear all fields
    txtInner = Null
    txtOuter = Null
    
    With txtPARTNUM
        .Value = Null
        .SetFocus
    End With
    
End Sub
