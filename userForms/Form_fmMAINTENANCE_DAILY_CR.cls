VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMAINTENANCE_DAILY_CR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim sCap1 As String
Dim sCap2 As String
Dim sCap3 As String
Dim sCap4 As String
Dim sCap5 As String
Dim sCap6 As String
Dim sCap7 As String
Dim ctl As Control
Dim sName As String


Public Sub sCap()
    sCap1 = "Peel Sticky Mats"
    sCap2 = "Mop Floor"
    sCap3 = "Clean Pass-Thrus"
    sCap4 = "Restock Supplies"
    sCap5 = "Wipe Down All Surfaces"
    sCap6 = "Wipe Down All Tools Used"
    sCap7 = "Take Out Trash"
    
End Sub

Private Sub ckMat_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap1, Me)
End Sub

Private Sub ckMop_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap2, Me)
End Sub

Private Sub ckPassThru_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap3, Me)
End Sub

Private Sub ckRestock_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap4, Me)
    
End Sub

Private Sub ckSurface_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap5, Me)
End Sub

Private Sub ckTools_Click()

Set ctl = SCREEN.ActiveControl
sName = ctl.Name
    Call ckCaption(sName, sCap6, Me)
    
End Sub
Private Sub ckTrash_Click()

    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap7, Me)
    
End Sub

Private Sub ckMat_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckPassThru_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckMop_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckRestock_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckSurface_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTools_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTrash_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmdENTER_Click()
Dim sMat As String
Dim sPass As String
Dim sRestock As String
Dim sMop As String
Dim sSurface As String
Dim sTools As String
Dim sTrash As String
Dim techName As Long
Dim stSQL As String
Dim sP As String
Dim sNu As String
Dim sTbl As String

On Error GoTo Macro1_Err

sTbl = "tblMAINTENANCE_DAILY_CR"
sP = ", "
sNu = "Null"

    'Pull checkbox values
    If ckMat = True Then
        sMat = "True"
    Else:
        sMat = "False"
    End If
    
    If ckPassThru = True Then
        sPass = "True"
    Else:
        sPass = "False"
    End If
    
    If ckRestock = True Then
        sRestock = "True"
    Else:
        sRestock = "False"
    End If
    
    If ckMop = True Then
        sMop = "True"
    Else:
        sMop = "False"
    End If

    If ckSurface = True Then
        sSurface = "True"
    Else:
        sSurface = "False"
    End If
    
    If ckTools = True Then
        sTools = "True"
    Else:
        sTools = "False"
    End If

    If ckTrash = True Then
        sTrash = "True"
    Else:
        sTrash = "False"
    End If
    
    'Pull name
    techName = Nz(cmbTech.Value, 0)
    
    'Check that form was entered properly
    If techName = 0 Then
        MsgBox "Select a name.", vbOKOnly, "Missing Info"
        cmbTech.SetFocus
    Else:
        
        If (ckIncomplete("ck*", Me, True, 1) = False) Then
            'Enter a new entry to CR daily log
            stSQL = sNu & sP & sNu & sP & sNu & sP & _
                    sSurface & sP & sTools & sP & sMat & sP & sPass & sP & sTrash & sP & sMop & sP & _
                    False & sP & False & sP & False & sP & False & sP & sRestock & sP & techName
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
  
'clear values
    Call sCap
    cmbTech = Null
    
    With ckMat
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    With ckMop
        .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    With ckPassThru
        .Value = False
        .Caption = sCap3
        .FontBold = False
    End With
    
    With ckRestock
        .Value = False
        .Caption = sCap4
        .FontBold = False
    End With
    
    With ckSurface
        .Value = False
        .Caption = sCap5
        .FontBold = False
    End With
    
    With ckTools
        .Value = False
        .Caption = sCap6
        .FontBold = False
    End With
    
    With ckTrash
        .Value = False
        .Caption = sCap7
        .FontBold = False
    End With
    
'reset subforms
    cmbTech.SetFocus
    Call listBox_LOAD
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "CR Daily Maintenance"
    Call sCap
    Call cmdUndo_Click
    
End Sub

Private Sub listBox_LOAD()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    With Me!listTASKS
        taskID = 4 'location of query information
        .RowSource = "" 'clear old information
        title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
        .RowSource = title
    End With
    
End Sub

