VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_DAILY_CL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim ctl As Control
Dim sCap1 As String
Dim sCap2 As String
Dim sCap3 As String
Dim sCap4 As String
Dim sCap5 As String
Dim sName As String

Sub captID()
    sCap1 = "UV Light On"
    sCap2 = "Were the ultrasonic cleaners drained and cleaned?"
    sCap3 = "Were the tanks refilled and degassed?"
    sCap4 = "Floors Cleaned"
    sCap5 = "Electrical Cables Checked"
    
End Sub

Private Sub ckCable_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap5, Me)
End Sub

Private Sub ckCable_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckDrain_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap2, Me)
End Sub

Private Sub ckDrain_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckFloor_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap4, Me)
End Sub

Private Sub ckFloor_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckRefill_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap3, Me)
End Sub

Private Sub ckRefill_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckUV_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap1, Me)
End Sub

Private Sub ckUV_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbName_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Command152_Click()
On Error Resume Next
Call captID

    cmbName = Null
    txtRESISTANCE = Null
    txtMETER_CR = Null
    txtMETER_CL = Null
    
    With ckUV
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    With ckRefill
        .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    With ckDrain
        .Value = False
        .Caption = sCap3
        .FontBold = False
    End With
    
    With ckFloor
        .Value = False
        .Caption = sCap4
        .FontBold = False
    End With
    
    With ckCable
        .Value = False
        .Caption = sCap5
        .FontBold = False
    End With
    
    
    cmbName.SetFocus
    Child133.Requery
    listTASKS.Requery
    
End Sub

Private Sub Command282_Click()

On Error GoTo Macro1_Err
Dim stSQL As String
Dim taskTable As String
Dim SPCR As String
Dim UVlite As Boolean
Dim floorClean As Boolean
Dim bUSc As Boolean
Dim bUSr As Boolean
Dim bCable As Boolean
Dim taskID As Long
Dim sH2O_CL As String
Dim sH2O_CR As String
Dim sOhm As String


'enter values
taskID = 3
SPCR = ", "
    
On Error GoTo lookupErr
    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    
On Error GoTo Macro1_Err

    If IsNull(cmbName) = True Then
        MsgBox "Select a name.", vbOKOnly, "Missing Info"
        cmbName.SetFocus
    Else:
    
        If (ckIncomplete("ck*", Me, True, 1) = False) Then
            UVlite = ckUV
            floorClean = ckFloor
            bUSc = ckDrain
            bUSr = ckRefill
            bCable = ckCable
            sOhm = strSQL(txtRESISTANCE.Value)
            sH2O_CL = strSQL(txtMETER_CL.Value)
            sH2O_CR = strSQL(txtMETER_CR.Value)
                
            stSQL = sOhm & SPCR & sH2O_CR & SPCR & sH2O_CL & SPCR & UVlite & SPCR & floorClean & SPCR & bCable & SPCR & bUSr & SPCR & bUSc & SPCR & cmbName.Value
            Call sqlEntryBuilder(taskTable, stSQL, True)
            Call Command152_Click
            Child133.Requery
        End If
        
    End If


Macro1_Exit:
    Exit Sub

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
On Error Resume Next
'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    taskID = 3 'location of query information
    title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
    
    With Me
        !listTASKS.RowSource = ""
        !listTASKS.RowSource = title
        .Parent!lblBANNER.Caption = "Daily PM"
    End With
    
    
    Call captID
    Call Command152_Click
    

End Sub
Private Sub meterCheck()

Dim ctl As Control
Dim meter As Double
Dim lastVal As Double
Dim diffVal As Double
Dim lastDate As Date
Dim sTbl As String
Dim sCol As String

    Set ctl = SCREEN.ActiveControl
    sTbl = "tblMAINTENANCE_DAILY_CL"
    
If ctl.Value <> "" Then
       
    
    If ctl.Name = "txtMETER_CL" Then
        sCol = "[waterMeter_CL]"
        meter = txtMETER_CL.Value
    Else:
        sCol = "[waterMeter_CR]"
        meter = txtMETER_CR.Value
    End If
    
        lastDate = DMax("[timeDate]", sTbl)
        lastVal = Nz(DLookup(sCol, sTbl, "[timeDate] = #" & lastDate & "#"))
        diffVal = meter - lastVal
        
        If IsNull(lastVal) = False Then
            If diffVal < 0 Then
                MsgBox "The amount you entered is less than the previous record. Please check the values you entered before proceeding." & vbCr & vbCr & _
                        "Entered Value: " & meter & vbCr & _
                        "Previous Value: " & lastVal, vbOKOnly, "Incorrect Value?"
                ctl.SetFocus
            ElseIf diffVal > 3000 Then
                MsgBox "The amount you entered is above average. Check that the value you entered is correct." & vbCr & vbCr & _
                        "Entered Value: " & meter & vbCr & _
                        "Previous Value: " & lastVal, vbOKOnly, "Incorrect Value?"
                ctl.SetFocus
            End If
        End If
    
        ctl.SetFocus

    
End If


End Sub

Private Sub txtMETER_CL_AfterUpdate()

    Call meterCheck

End Sub

Private Sub txtMETER_CR_AfterUpdate()

    Call meterCheck

End Sub

Private Sub txtRESISTANCE_AfterUpdate()
Dim resist As Double

resist = txtRESISTANCE.Value

If resist < 0.5 Then
    MsgBox "The resistance for deionized water is below recommended levels. Please replace resin tanks or contact your supervisor.", vbOKOnly, "Resistance Low"
    
End If

End Sub


