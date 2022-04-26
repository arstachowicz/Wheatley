VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmEXPORTDATA"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim taskID As Long
Dim ctrl As Control
Dim tmpCHEM, tmpLINE, tmpTANK, tmpDate1, tmpDate2, tmpBUILDING As TempVars

Private Sub cmbBuilding_AfterUpdate()

    With Forms![fmHome]![NavigationSubform].Form
        If !cmbBUILDING.Value <> "" Then
            TempVars!tmpBUILDING = !cmbBUILDING.Value
        Else:
            TempVars!tmpBUILDING = "*"
        End If
    End With
    
End Sub

Private Sub cmbChemical_AfterUpdate()

If cmbChemical <> "" Then
    TempVars!tmpCHEM = CLng(cmbChemical.Value)
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpCHEM = "*"
    
End If

'change query's view
    Call previewQry
    
End Sub

Private Sub cmbLINE_AfterUpdate()
'update chemical field with change in line field

If cmbLine <> "" Then
    TempVars!tmpLINE = CLng(cmbLine.Value)
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpLINE = "*"
End If

'change query's view
    Call previewQry

End Sub

Private Sub cmbTank_AfterUpdate()

If cmbTank <> "" Then
    TempVars!tmpTANK = cmbTank.Value
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpLINE = "*"
End If

'change query's view
    Call previewQry

    
End Sub

Private Sub cmbTask_AfterUpdate()

    If IsNull(cmbTask) = False Then
        taskID = cmbTask.Value
        Call fieAdjust
        Call previewQry
        
        TempVars!tmpLINE = "*"
        TempVars!tmpCHEM = "*"
        TempVars!tmpTANK = "*"
        TempVars!tmpBUILDING = "*"
    End If
    
End Sub

Private Sub previewQry()
On Error GoTo qryLookErr
'provides a preview of what the query looks like, allows user to see before saving
Dim qryName As String

    qryName = DLookup("[qryRel]", "tblTaskList", "[ID] = " & taskID)
    Child465.SourceObject = "Query." & qryName
    Child465.Requery

subExit:
    Exit Sub

qryLookErr:
    MsgBox "There was an error searching for the query."
    Resume subExit
    
End Sub

Private Sub fieAdjust()

    If (taskID = 1) Or (taskID = 2) Or (taskID = 5) Or (taskID = 21) Then
        cmbLine.Enabled = True
        cmbChemical.Enabled = True
        
        cmbBUILDING.Enabled = False
        cmbTank.Enabled = False
        
    ElseIf (taskID = 8) Then
    
        cmbBUILDING.Enabled = True
        cmbTank.Enabled = True
        
        cmbLine.Enabled = False
        cmbChemical.Enabled = False
        
    Else:
    
        cmbLine.Enabled = False
        cmbChemical.Enabled = False
        cmbBUILDING.Enabled = False
        cmbTank.Enabled = False
        
    End If
    
    cmbLine.Requery
    cmbChemical.Requery
    cmbBUILDING.Requery
    cmbTank.Requery
    

End Sub

Private Sub cmbUndo_Click()
    
    'Clear fields
    cmbTask = Null
    txtDate1 = Null
    txtDate2 = Null
    cmbLine = Null
    cmbChemical = Null
    cmbBUILDING = Null
    cmbTank = Null
    cmbTask = Null
    
    cmbLine.Enabled = False
    cmbChemical.Enabled = False
    cmbBUILDING.Enabled = False
    cmbTank.Enabled = False
    
    Child465.SourceObject = ""
    TempVars.RemoveAll
    cmbTask.SetFocus
    
End Sub

Private Sub cmdDate_Click()

'enter values for all dates to be selected
    With CodeContextObject
        TempVars!tmpDate1 = #1/1/2010#
        TempVars!tmpDate2 = Date
        .txtDate1 = TempVars!tmpDate1
        .txtDate2 = TempVars!tmpDate2
    End With

    Call previewQry
    
End Sub

Private Sub Form_Close()

    TempVars.RemoveAll
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Export Data"
    cmbTask.SetFocus
    
End Sub

Private Sub dateTmp(Ctrol As Control)

    If (IsNull(taskID) = False) And (taskID <> 0) Then
        If (txtDate2.Value < txtDate1.Value) Then
                Beep
                MsgBox "The date you entered is later than the end date.", vbOKOnly, "Error"
        Else:
            If (IsNull(Ctrol) = False) Then
                If Ctrol.Name = "txtDate1" Then
                    TempVars!tmpDate1 = Ctrol.Value
                ElseIf ctrl.Name = "txtDate2" Then
                    TempVars!tmpDate2 = Ctrol.Value
                End If
            Else:
                TempVars!tmpDate1 = ""
                TempVars!tmpDate2 = ""
            End If
                
            Call previewQry
            Child465.Requery
        End If
    Else:
        cmbTask.SetFocus
    End If
    
End Sub

Private Sub txtDate1_AfterUpdate()

    Set ctrl = SCREEN.ActiveControl
    Call dateTmp(ctrl)

End Sub

Private Sub txtDate2_AfterUpdate()

    Set ctrl = SCREEN.ActiveControl
    Call dateTmp(ctrl)

End Sub


