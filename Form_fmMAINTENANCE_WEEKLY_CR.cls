VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_WEEKLY_CR"
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
Public sCap4 As String
Public sCap5 As String
Public sCap6 As String
Public sCap7 As String
Public sCap8 As String
Public sCap9 As String
Public sCap10 As String

Public Sub captionInfo()

    'Caption List
    sCap1 = "Laundry"
    sCap2 = "Sweep/Mop Chaseway"
    sCap3 = "Sweep/Mop Gowning Room"
    sCap4 = "Mop Drying Area"
    sCap5 = "Clean Fixtures and Staking Tools"
    sCap6 = "Clean Outside Ledges of Clean Room"
    sCap7 = "Clean Mats"
    sCap8 = "Wipe Down All Hand Tools"
    sCap9 = "Wipe Trashcans/Laundry Baskets"
    sCap10 = "Clean Gowning Room Benches/Lockers"

End Sub


Private Sub ckBenches_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap10, Me)
End Sub

Private Sub ckLaundry_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap1, Me)
End Sub

Private Sub ckChaseway_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap2, Me)

End Sub

Private Sub ckGowning_Click()
Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap3, Me)
End Sub

Private Sub ckLedge_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap6, Me)
End Sub

Private Sub ckMats_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap7, Me)
End Sub

Private Sub ckMop_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap4, Me)
End Sub

Private Sub ckStake_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap5, Me)
End Sub

Private Sub ckTools_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap8, Me)
End Sub

Private Sub ckTrash_Click()
Set ctl = SCREEN.ActiveControl
    sName = ctl.Name

    Call ckCaption(sName, sCap9, Me)
End Sub

Private Sub cmdENTER_Click()
'booleans
Dim b1Chase As Boolean
Dim b1Sweep As Boolean
Dim b1Laundry As Boolean
Dim b2mop As Boolean
Dim b2Stak As Boolean
Dim b2Ledge As Boolean
Dim b3Mat As Boolean
Dim b3Tool As Boolean
Dim b3Trash As Boolean
Dim b3Bench As Boolean

Dim lName As Long
Dim stSQL As String
Dim sTbl As String
Dim sP As String


sTbl = "tblMAINTENANCE_WEEKLY_CR"
sP = ", "

'Pulls data from sheet
    b1Chase = ckChaseway
    b1Sweep = ckGowning
    b1Laundry = ckLaundry
    b2mop = ckMop
    b2Stak = ckStake
    b2Ledge = ckLedge
    b3Mat = ckMats
    b3Tool = ckTools
    b3Trash = ckTrash
    b3Bench = ckBenches
    lName = Nz(cmbTech.Value, 0)
    
'checks all necessary info was added
    If lName = 0 Then
        MsgBox "Select a name.", vbOKOnly, "Missing Info"
        cmbTech.SetFocus
    Else:
    
        If (ckIncomplete("ck*", Me, True, 1) = False) Then
            'Enter a new entry to CR weekly log
            stSQL = b1Chase & sP & b1Sweep & sP & b1Laundry & sP & b2mop & sP & _
                    b2Stak & sP & b2Ledge & sP & b3Mat & sP & b3Tool & sP & b3Trash & sP & False & sP & _
                    b3Bench & sP & False & sP & lName
            
            Call sqlEntryBuilder(sTbl, stSQL, True)
            MsgBox "Record successfully added."
            Call cmdUndo_Click
        End If
    End If
    
End Sub

Private Sub cmdUndo_Click()
On Error Resume Next

    'clears all values
    cmbTech.Value = Null
    
    With ckLaundry
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    With ckChaseway
        .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    With ckGowning
        .Value = False
        .Caption = sCap3
        .FontBold = False
    End With
    
    With ckMop
        .Value = False
        .Caption = sCap4
        .FontBold = False
    End With
    
    With ckStake
        .Value = False
        .Caption = sCap5
        .FontBold = False
    End With
    
    With ckLedge
        .Value = False
        .Caption = sCap6
        .FontBold = False
    End With
    
    With ckMats
        .Value = False
        .Caption = sCap7
        .FontBold = False
    End With
    
    With ckTools
        .Value = False
        .Caption = sCap8
        .FontBold = False
    End With
    
    With ckTrash
        .Value = False
        .Caption = sCap9
        .FontBold = False
    End With
    
    With ckBenches
        .Value = False
        .Caption = sCap10
        .FontBold = False
    End With
    
    cmbTech.SetFocus
    Call listBoxLoad

    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "CR Weekly Maintenance"
    Call captionInfo
    Call cmdUndo_Click
        
End Sub

Private Sub listBoxLoad()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    taskID = 10 'location of query information
    Me!listTASKS.RowSource = "" 'clear old information
    title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
    Me!listTASKS.RowSource = title

End Sub

Private Sub ckBenches_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckChaseway_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckGowning_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckLaundry_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckLedge_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckMats_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckMop_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckStake_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTools_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTrash_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
