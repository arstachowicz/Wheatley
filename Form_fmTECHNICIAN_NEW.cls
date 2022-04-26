VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmTECHNICIAN_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Command104_Click()
On Error GoTo Macro1_Err

Dim ctrl As Control
Dim firstName As String
Dim lastName As String
Dim sPath As String
Dim queryName As String
Dim sTbl As String
Dim sP As String
Dim sValues As String
Dim techID As Long
Dim loc As Long
Dim lShift As Long
Dim bEmp As Boolean
Dim bCL As Boolean
Dim bCR As Boolean

queryName = "dupTECHNAME"
sTbl = "tblTECHNAME"
sP = ", "
sPath = Me.Parent.Parent.Name & ".NavigationSubform>fmTECHNICIAN.ChildForm"
Set ctrl = Me.Controls!cmbName


If ckIncomplete("cmb*", Me, True, 2) = False Then
    
    'pull entered values and assign to variables
    firstName = Trim(cmbName.Value)
    lastName = Trim(cmbLAST.Value)
    
    lShift = cmbSHIFT.Value
    loc = cmbLocation.Value
    
    bEmp = True
    bCR = False
    bCL = False
 
    'store where the person works
    If loc = 1 Then
        bCL = True
    ElseIf loc = 2 Then
        bCR = True
    End If
    
    sValues = "'" & firstName & "', '" & lastName & "', " & bEmp & sP & lShift & sP & bCL & sP & bCR
    Call dupPartEntry(queryName, ctrl, sTbl, sValues, "fmTECHNICIAN_EDIT", sPath) 'check for duplicates
    Call Command108_Click
End If


Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Command108_Click()
On Error Resume Next
    cmbName = Null
    cmbLAST = Null
    cmbLocation = Null
    cmbSHIFT.Value = 1
    cmbName.SetFocus
       
End Sub

Private Sub Employed_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

