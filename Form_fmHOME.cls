VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmHOME"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Open(Cancel As Integer)
On Error Resume Next
    Forms![fmHome]!lblBANNER.Caption = "Clean Line Tasks"
End Sub

Private Sub Form_Timer()
On Error Resume Next

Dim macroRun As Date
Dim emailFailure As Date
Dim rstTask As Recordset
Dim lStore As Long
Dim tbl As String

    tbl = "tblTASKLIST"
    Set rstTask = CurrentDb.OpenRecordset(tbl, dbOpenDynaset)
    lStore = 1

    If computerName = True Then 'lookup computer that is to send emails
    
        'Date pulls
        macroRun = Nz(DLookup("[Check]", tbl, "[ID] = 1"), Date)  'locate storage of last check's date
        emailFailure = DateAdd("d", 4, macroRun) 'if no emails are sent after 4 days, send alert email
    
        If emailFailure <> Date Then
            
            If macroRun < Date Then
                Call AutoEmail
            End If
             
        Else:
            'send email to admin that emails are failing to send properly.
            Call emailFail
        End If
        
        'Update the date to today's date to prevent multiple emails being sent out
        With rstTask
            .FindFirst "ID=" & lStore
            .Edit
            !Check = Date
            .Update
        End With
        
    End If
    
    'keeps timer running if it stops
    If Me.TimerInterval = 0 Then
        Me.TimerInterval = 3600000 'every hour
    End If
    
    rstTask.Close

End Sub

Private Sub navCLTASKS_Click()
On Error Resume Next

    lblBANNER.Caption = "Clean Line Tasks"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
    End With
    
End Sub

Private Sub navEPFIXTURES_Click()
On Error Resume Next

    lblBANNER.Caption = "Internal EP Fixtures"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtPART.SetFocus
    End With

End Sub

Private Sub NavigationButton366_Click()
On Error Resume Next
    DoCmd.OpenForm "fmpassword", acNormal, , , , acDialog
End Sub

Private Sub navLEAKCHECK_Click()
On Error Resume Next
    lblBANNER.Caption = "Leak Check Fixtures"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtPART.SetFocus
    End With
    
End Sub

Private Sub navMAINTENANCE_CL_Click()
On Error Resume Next
    lblBANNER.Caption = "Clean Line Maintenance"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
    End With
    
End Sub

Private Sub navMAINTENANCE_CR_Click()
On Error Resume Next
    lblBANNER.Caption = "Clean Room Maintenance"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
    End With
    
End Sub

Private Sub navPRESS_Click()
On Error Resume Next

    lblBANNER.Caption = "Press Fixtures"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtPART.SetFocus
    End With
    
End Sub

Private Sub navTECHNICIAN_Click()
On Error Resume Next

    lblBANNER.Caption = "Technician View"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
    End With

End Sub

Private Sub navEXPORT_Click()
On Error Resume Next

    lblBANNER.Caption = "Export Data"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!cmbTask.SetFocus
    End With

End Sub

Private Sub nvgATMOS_Click()
On Error Resume Next

    lblBANNER.Caption = "Atmospheric Condition"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtTEMP.SetFocus
    End With
End Sub

Private Sub nvgMETAL_AAS_Click()
On Error Resume Next

    lblBANNER.Caption = "Metal Content Analysis"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!timeDate.SetFocus
    End With
    
End Sub

Private Sub nvgPassivation_Click()
On Error Resume Next

    lblBANNER.Caption = "Passivation Fixtures"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtPART.SetFocus
    End With
    
End Sub

Private Sub nvgSURFACEQUAL_Click()
On Error Resume Next

    lblBANNER.Caption = "Surface Quality"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
    End With
    
End Sub

Private Sub nvgWASTE_Click()
On Error Resume Next

    lblBANNER.Caption = "Waste Water Analysis"
    With Forms![fmHome]![NavigationSubform]
        .SetFocus
        .Form!txtTEMP.SetFocus
    End With
End Sub


