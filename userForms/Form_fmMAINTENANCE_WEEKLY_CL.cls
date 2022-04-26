VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_WEEKLY_CL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim ctl As Control
Dim sName As String
Dim sCap249 As String
Dim sCap270 As String

Sub captCLWeek()
    sCap249 = "Safety Shower Checked"
    sCap270 = "Eye Flush Sink Checked"
End Sub
Private Sub ckShower_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap249, Me)
End Sub

Private Sub ckShower_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckSink_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap270, Me)
End Sub

Private Sub ckSink_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err

Dim stSQL As String
Dim sTbl As String
Dim bShower As Long
Dim bFlush As Long
Dim sP As String

sTbl = "tblMAINTENANCE_WEEKLY_CL"
sP = ", "

    If cmbName.Value = "" Then
        MsgBox "Select a name.", vbOKOnly, "Missing Info"
        Exit Sub
    Else:
        If (ckIncomplete("Ck*", Me, True, 1) = False) Then
            With Me
                bShower = ckShower
                bFlush = ckSink
                stSQL = False & sP & bShower & sP & bFlush & sP & False & sP & .cmbName
            End With
                
            Call sqlEntryBuilder(sTbl, stSQL, True)
            MsgBox "Record successfully added."
            Call cmdUndo_Click
        End If
        
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
End Sub

Private Sub cmdUndo_Click()
On Error Resume Next

    With ckShower
        .Value = False
        .Caption = sCap249
        .FontBold = False
    End With

    With ckSink
        .Value = False
        .Caption = sCap270
        .FontBold = False
    End With

    cmbName = Null
    cmbName.SetFocus
    Call listBoxLoad
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "Weekly PM"
    Call captCLWeek
    Call cmdUndo_Click
    
End Sub

Private Sub listBoxLoad()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    taskID = 9 'location of query information
    Me!listTASKS.RowSource = "" 'clear old information
    title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
    Me!listTASKS.RowSource = title
   

End Sub

