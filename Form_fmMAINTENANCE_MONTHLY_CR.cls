VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_MONTHLY_CR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public ctl As Control
Public sName As String
Public sCap1 As String
Public sCap2 As String
Public sCap3 As String

Public Sub captionInfo()

    'Caption List
    sCap1 = "Clean Walls"
    sCap2 = "Clean Ceilings"
    sCap3 = "Calibrate Leak Checker"

End Sub

Private Sub ckCleanCeil_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap2, Me)
End Sub

Private Sub ckCleanCeil_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckCleanWall_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap1, Me)
End Sub

Private Sub ckCleanWall_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckLeak_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap3, Me)
    
    If (ckLeak.Value = True) Then
        Label633.Visible = True
        
        With cmbLeak
            .Visible = True
            .SetFocus
        End With
        
        With tgl1Val
            .Visible = True
            .Value = False
        End With
        
        With tgl3Val
            .Visible = True
            .Value = False
        End With
        
    Else:
        Label633.Visible = False
        cmbLeak.Visible = False
        
        Label712.Visible = False
        With txtCalibrate
            .Visible = False
            .Value = Null
        End With
        
        Label758.Visible = False
        With txtLR
            .Visible = False
            .Value = Null
        End With
        
        Label771.Visible = False
        With txtBack
            .Visible = False
            .Value = Null
        End With
        
        tgl1Val.Visible = False
        tgl3Val.Visible = False
    End If
    
End Sub

Private Sub ckLeak_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbLeak_AfterUpdate()
    If (tgl3Val.Visible = True) Then
        Call tgl3Val_Click
    End If
End Sub

Private Sub Command59_Click()
On Error GoTo Macro1_Err

Dim ltechName As Long
Dim dFactor As Double
Dim dCLR As Double
Dim dLR As Double
Dim dBack As Double
Dim dLowFact As Double
Dim dHighFact As Double
Dim sN As String
Dim stSQL As String
Dim sPR As String
Dim sLeak As String
Dim sTbl As String
Dim sTit As String
Dim sCal As String
Dim sCLR As String
Dim sLR As String
Dim sBack As String
Dim bWalls As Boolean
Dim bCeil As Boolean
Dim bLeak As Boolean
Dim bLD4 As Boolean
Dim bLD5 As Boolean
Dim bLD6 As Boolean
Dim bLD7 As Boolean

sPR = ", "
sN = "Null"
ltechName = Nz(techName.Value, 0)
sCal = CStr(Nz(txtCalibrate.Value, sN))
sTbl = "tblMAINTENANCE_MONTHLY_CR"
sTit = "Missing Info"
dLowFact = 0.5 'lower limit of allowed factor
dHighFact = 2 'upper limit of allowed factor

   
    If IsNull(techName) = True Then
        MsgBox "Select a name.", vbOKOnly, sTit
        techName.SetFocus
    ElseIf (ckLeak = True) And (IsNull(cmbLeak) = True) Then
        MsgBox "Please identify the leak checker that was calibrated.", vbOKOnly, sTit
        cmbLeak.SetFocus
     ElseIf (ckLeak = True) And (tgl1Val = False) And (tgl3Val = False) Then
        MsgBox "Please select the leak checker's output method: 1- or 3-Factor.", vbOKOnly, sTit
    ElseIf (ckLeak = True) And (tgl1Val = True) And (IsNull(txtCalibrate) = True) Then
        MsgBox "Please enter the factor that the leak checker displayed post-calibration.", vbOKOnly, sTit
        txtCalibrate.SetFocus
    ElseIf (ckLeak = True) And (tgl3Val = True) And (IsNull(txtCalibrate) = True) Then
        MsgBox "Please enter the factor calibration value provided by outside servicing.", vbOKOnly, sTit
        txtCalibrate.SetFocus
    ElseIf (ckLeak = True) And (tgl3Val = True) And (IsNull(txtLR) = True) Then
        MsgBox "Please enter the first value that the leak checker displayed post-calibration.", vbOKOnly, sTit
        txtLR.SetFocus
    ElseIf (ckLeak = True) And (tgl3Val = True) And (IsNull(txtBack) = True) Then
        MsgBox "Please enter the second value (background) that the leak checker displayed post-calibration.", vbOKOnly, sTit
        txtBack.SetFocus
    ElseIf (ckLeak = True) And (txtBack.Value > txtLR.Value) Then
        MsgBox "The background should be lower than the first calibration number or will result in an error.", vbOKOnly, sTit
        txtBack.SetFocus
    ElseIf (ckLeak = True) And (IsNull(txtBack) = False) And (txtBack.Value = txtLR.Value) Then
        MsgBox "The background should be lower than the first calibration number or will result in an error.", vbOKOnly, sTit
        txtBack.SetFocus
    Else:
    
        If ckIncomplete("ck*", Me, True, 1) = False Then
            bWalls = ckCleanWall
            bCeil = ckCleanCeil
            bLeak = ckLeak
            bLD4 = False
            bLD5 = False
            bLD6 = False
            bLD7 = False
    
            'assign boolean to leak checker ID #
            If cmbLeak = 1 Then
                bLD4 = True
            ElseIf cmbLeak = 2 Then
                bLD5 = True
            ElseIf cmbLeak = 3 Then
                bLD6 = True
            ElseIf cmbLeak = 4 Then
                bLD7 = True
            Else:
                sLeak = Nz(cmbLeak.Value, sN)
            End If
            
            If (ckLeak = True) And (tgl1Val = True) Then
                dFactor = txtCalibrate
                sCal = sqlStr(txtCalibrate)
                sCLR = sN
                sLR = sN
                sBack = sN
            ElseIf (ckLeak = True) And (tgl3Val = True) Then
                dCLR = txtCalibrate
                dLR = txtLR
                dBack = txtBack
                dFactor = dCLR / (dLR - dBack)
                sCLR = sqlStr(txtCalibrate)
                sLR = sqlStr(txtLR)
                sBack = sqlStr(txtBack)
            End If
            
            If (IsNull(dFactor) = False) Then
                If (dFactor < dLowFact) Then
                    MsgBox "This leak checker needs outside servicing. Do not use. Factor is below lower limit of " & CStr(dLowFact) & ".", vbOKOnly
                ElseIf (dFactor > dHighFact) Then
                    MsgBox "This leak checker needs outside servicing. Do not use. Factor is above the upper limit of " & CStr(dHighFact) & ".", vbOKOnly
                End If
            End If
            
            stSQL = bWalls & sPR & bCeil & sPR & False & sPR & CStr(ltechName) & sPR & bLD4 & sPR & bLD5 & sPR & bLD6 & sPR & bLD7 & _
                    sPR & sCal & sPR & sCLR & sPR & sLR & sPR & sBack
            
            Call sqlEntryBuilder(sTbl, stSQL, True)
            MsgBox "Record successfully added."
            Call Command64_Click
            Call listBox_LOAD
        End If
    End If
    
Macro1_Exit:
        Exit Sub
    
Macro1_Err:
        MsgBox Error$
        Resume Macro1_Exit
        
End Sub

Private Sub Command64_Click()
On Error Resume Next
  'clear fields (undo)
  
Call captionInfo

    With ckLeak
        .Value = False
        .Caption = sCap3
        .FontBold = False
    End With
    
    With ckCleanCeil
        .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    With ckCleanWall
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    'hides calibration fields
    cmbLeak.Value = Null
    tgl1Val.Visible = False
    tgl3Val.Visible = False
    
    With txtCalibrate
        .Value = Null
        .Visible = False
    End With
    
    With txtBack
        .Value = Null
        .Visible = False
    End With
    
    With txtLR
        .Value = Null
        .Visible = False
    End With
    
    Label633.Visible = False
    Label712.Visible = False
    Label758.Visible = False
    Label771.Visible = False
    cmbLeak.Visible = False

    With techName
        .Value = Null
        .SetFocus
    End With
    
End Sub

Private Sub Form_Load()
On Error Resume Next
   Me.Parent!lblBANNER.Caption = "CR Monthly Maintenance"
   Call Command64_Click
   Call listBox_LOAD

End Sub
Private Sub listBox_LOAD()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

taskID = 13 'location of query information
Me!listTASKS.RowSource = "" 'clear old information
title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
Me!listTASKS.RowSource = title
            
End Sub

Private Sub tgl1Val_Click()

    If tgl1Val.Value = True Then
        tgl3Val.Value = False
        Call tgl1Act
    Else:
        tgl3Val.Value = True
        Call tgl3Act
    End If
    
    txtCalibrate.SetFocus
    
End Sub

Private Sub tgl1Val_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tgl3Act()
'activate 3-factor fields

        Label758.Visible = True
        Label771.Visible = True
        
        With txtCalibrate
            .Visible = True
            .Value = Null
        End With
        
        With txtBack
            .Visible = True
            .Value = Null
        End With
        
        With txtLR
            .Visible = True
            .Value = Null
        End With
        
        With Label712
            .Caption = "Standard Value:"
            .Visible = True
        End With
        
End Sub

Private Sub tgl1Act()
'activate 1-factor fields

        Label758.Visible = False
        Label771.Visible = False
        
        With txtBack
            .Value = Null
            .Visible = False
        End With
        
        With txtLR
            .Value = Null
            .Visible = False
        End With
        
        With Label712
            .Caption = "Pre-Calculated Factor:"
            .Visible = True
        End With
        
        With txtCalibrate
            .Visible = True
            .Value = Null
        End With
        
End Sub
Private Sub tgl3Val_Click()
Dim dCal As Double
Dim sChecker As String
Dim sTbl As String

sTbl = "tblMAINTENANCE_MONTHLY_CR"

    If tgl3Val.Value = True Then
        tgl1Val.Value = False
        Call tgl3Act
                
        'populate standard value field if applicable
        If cmbLeak = 1 Then
                sChecker = "leakCal4"
            ElseIf cmbLeak = 2 Then
                sChecker = "leakCal5"
            ElseIf cmbLeak = 3 Then
                sChecker = "leakCal6"
            ElseIf cmbLeak = 4 Then
                sChecker = "leakCal7"
            Else:
                sChecker = Nz(cmbLeak.Value)
            End If
            
        dCal = Nz(DLast("[calVal]", sTbl, "[" & sChecker & "] = True"))
        
        If (IsNull(dCal) = False) And (dCal <> 0) Then 'if a calibration value has been previously entered, populate field
            txtCalibrate.Value = dCal
            txtLR.SetFocus
        Else:
            txtCalibrate.SetFocus
        End If
        
    Else:
        tgl1Val.Value = True
        Call tgl1Act
    End If

    txtCalibrate.SetFocus

End Sub

Private Sub tgl3Val_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
