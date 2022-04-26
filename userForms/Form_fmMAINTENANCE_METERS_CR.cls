VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_METERS_CR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Compare Database
Option Explicit

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err

Dim sVal As String
Dim sP As String
Dim sTbl As String
Dim taskID As Long

taskID = 4
sP = ", "
sTbl = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

    If (ckIncomplete("txt*", Me, True, 2) = False) Then 'check that all values were entered
        If txtTANKB.Value < 17 Then
            MsgBox "The resistance meter is low, violating work instruction 16-10-3-QA-0011. Change resin bottles and take resistance measurement again after 10 minutes.", vbOKOnly, "Process Violation"
        End If
            
        sVal = txtTEMP & sP & txtTANKA & sP & txtTANKB & sP & _
                False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & _
                txtNAME
        Call sqlEntryBuilder(sTbl, sVal, True)
        MsgBox "Record successfully added."
        Call listBox_LOAD
        Call cmdUndo_Click
    End If
    
Macro1_Exit:
        Exit Sub
    
Macro1_Err:
        MsgBox Error$
        Resume Macro1_Exit
        
End Sub

Private Sub cmdUndo_Click()

    txtTANKA = Null
    txtTANKB = Null
    txtTEMP = Null
    
    With txtNAME
        .Value = Null
        .SetFocus
    End With

End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "CR Water Meters"
    Call listBox_LOAD
    
End Sub

Private Sub listBox_LOAD()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    With Me!listTASKS
        taskID = 19 'location of query information
        .RowSource = "" 'clear old information
        title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
        .RowSource = title
    End With
    
End Sub

Private Sub txtTANKB_AfterUpdate()

    Dim resistB As Double
    
    resistB = Nz(Trim(txtTANKB.Value), 0)
    
    If (resistB < 12) And (resistB <> 0) Then
        MsgBox "The resistance for deionized water is below recommended levels. Please replace resin tanks or contact your supervisor.", vbOKOnly, "Resistance Low"
    End If
    
End Sub

Private Sub txtTEMP_AfterUpdate()

    Dim Temp As Double
    
    Temp = Nz(Trim(txtTEMP.Value), 0)
    
    If (Temp < 80) And (Temp <> 0) Then
        MsgBox "The temperature for deionized water is below recommended levels. Please turn on water heater or contact your supervisor.", vbOKOnly, "Resistance Low"
    End If
    
End Sub
