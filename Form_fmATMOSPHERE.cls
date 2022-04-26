VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmATMOSPHERE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdENTER_Click()
Dim sVal As String
Dim sTbl As String
Dim sP As String
Dim sNote As String
Dim sMess As String
Dim dHum As Double
Dim dpHum As Double
Dim dTemp As Double
Dim ret As Long

On Error GoTo Macro1_Err:

sTbl = "tblATMOSPHERE"
sP = ", "
sMess = "Improbable Value Detected"


'check that all fields were entered and submit
    If (ckIncomplete("txt*", Me, True, 2) = False) Then
    
        dHum = txtHum.Value
        dpHum = dHum * 100
        dTemp = txtTEMP.Value
        
        'check entered values
        
        'checks temperature
            If (dTemp > 80) Or (dTemp < 40) Then 'entry error check, 40-80 degrees F
                ret = MsgBox("The temperature was recorded as " & dTemp & " " & Chr(176) & "F. Is this correct?", vbQuestion + vbYesNo + vbDefaultButton1, sMess)

                If (ret <> vbNo) Then 'if user hits cancel, exit out of entire code
                    'Resume Next
                Else:
                    MsgBox "Data not recorded."
                    Exit Sub
                End If
            End If
            
            'checks humidity
            If (dHum > 0.6) Or (dHum < 0.05) Then 'entry error check, 5 - 60%
                ret = MsgBox("The humidity was recorded as " & Round(dpHum, 0) & "%. Is this correct?", vbQuestion + vbYesNo + vbDefaultButton1, sMess)

                If (ret <> vbNo) Then 'if user hits cancel, exit out of entire code
                    'Resume Next
                Else:
                    MsgBox "Data not recorded."
                    Exit Sub
                End If
            End If
            
        
        sNote = sqlStr(Me.Notes)
        sVal = dHum & sP & dTemp & sP & sNote
        Call sqlEntryBuilder(sTbl, sVal, True)
        MsgBox "Successfully added.", vbOKOnly
        Call cmdUndo_Click
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub cmdUndo_Click()
    txtHum = Null
    
    With txtTEMP
        .Value = Null
        .SetFocus
    End With
End Sub

Private Sub Form_Load()
On Error Resume Next
'clear values and set focus to first field
    Me.Parent!lblBANNER.Caption = "CL Atmosphere Conditions"
    Call cmdUndo_Click

End Sub
