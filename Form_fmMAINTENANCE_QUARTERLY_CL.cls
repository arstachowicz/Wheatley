VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_QUARTERLY_CL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim taskID As Long

Private Sub Image169_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

MouseCursor (32649)

End Sub

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err
Dim db As DAO.Database
Dim sVal As String
Dim sTable As String
Dim sSQL As String

Set db = CurrentDb
sTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

    If ckIncomplete("cmb*", Me, True, 2) = False Then
        If tglSANITIZE = True Then
            sVal = cmbName & ", " & cmbBUILDING
            sSQL = "Insert into " & sTable & " (techName, building) " & _
                    "Values (" & sVal & ");"
            db.Execute sSQL, dbFailOnError
            MsgBox "The check has successfully been recorded.", vbOKOnly, "Success"
        Else:
            MsgBox "Please check the box for sanitization.", vbOKOnly, "Missing Info"
        End If
        
    End If
    db.Close
        
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub cmdUndo_Click()
On Error Resume Next
Dim nextDate As Date

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
    tglSANITIZE = False
    Call tglSANITIZE_Click
    
    cmbName = Null
    cmbName.SetFocus
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    'lookup next due date and post in caption
    Me.Parent!lblBANNER.Caption = "Quarterly PM"
    taskID = 12
    Call cmdUndo_Click
    
End Sub

Private Sub tglSANITIZE_Click()

    If tglSANITIZE = True Then
        tglSANITIZE.Caption = "Yes"
    ElseIf tglSANITIZE = False Then
        tglSANITIZE.Caption = "No"
    End If

End Sub

Private Sub tglSANITIZE_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
