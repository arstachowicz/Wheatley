VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmMETERS_CR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

#If VBA7 Then
    Private Declare PtrSafe Function GetClientRect Lib "user32" (ByVal hwnd As Long, lpRect As SCREEN) As Long
    Private Declare PtrSafe Function GetDesktopWindow Lib "user32" () As Long
#Else
    Private Declare Function GetClientRect Lib "user32" (ByVal hwnd As Long, lpRect As SCREEN) As Long
    Private Declare Function GetDesktopWindow Lib "user32" () As Long
#End If

Private Type SCREEN
        Left As Long
        top As Long
        Right As Long
        bottom As Long
End Type

Private Sub Image169_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

MouseCursor (32649)

End Sub

Private Sub Form_Load()
On Error Resume Next

Me.Parent!lblBANNER.Caption = "CR Quarterly Maintenance"


Dim ScreenHeight As Integer
Dim ScreenWidth As Integer
Dim freq As Integer
Dim ifreq As Integer
Dim Scrn As SCREEN
Dim ret As Long
Dim ctl As Control
Dim lastDate As Date
Dim nextDate As Date
Dim tabLoc As String
    
    ret = GetClientRect(CLng(GetDesktopWindow()), Scrn)
    ScreenHeight = Scrn.bottom - Scrn.top
    ScreenWidth = Scrn.Right - Scrn.Left
    
    freq = Nz(DLookup("[frequency]", "tblTASKLIST", "[ID] = 11"))
    tabLoc = Nz(DLookup("[tableREL]", "tblTASKLIST", "[ID] = 11"))
    lastDate = Nz(DMax("[timeDate]", tabLoc))
    
    With Forms![fmHome]![NavigationSubform].Form![Child20]
        If ScreenHeight = 768 And ScreenWidth = 1366 Then
            ![EmptyCell63].Width = ![EmptyCell63].Width / 1.75
            '![EmptyCell535].Width = ![EmptyCell535].Width / 1.5
        End If
        
        If ScreenHeight = 900 And ScreenWidth = 1600 Then
            ![EmptyCell63].Width = ![EmptyCell63].Width / 1.5
            '![EmptyCell535].Width = ![EmptyCell535].Width / 1.5
        End If
    End With
    
lblTEMPERATURE.Caption = ""
lblRESISTANCE.Caption = ""

    'Assign appropriate time for next test date
    If freq = 1 Then 'daily
        nextDate = DateAdd("d", 1, lastDate)
    ElseIf freq = 2 Then 'every other day
        nextDate = DateAdd("d", 2, lastDate)
    ElseIf freq = 7 Then 'weekly
        nextDate = DateAdd("ww", 1, lastDate)
    ElseIf freq = 14 Then 'biweekly
        nextDate = DateAdd("ww", 2, lastDate)
    ElseIf freq = 30 Then 'monthly
        nextDate = DateAdd("m", 1, lastDate)
    ElseIf freq = 81 Then 'quarterly
        nextDate = DateAdd("q", 1, lastDate)
    ElseIf freq = 325 Then 'annually
        nextDate = DateAdd("yyyy", 1, lastDate)
    Else:
        MsgBox "Error when pulling testing frequency information.", vbOKOnly, "Error"
        lblNEXT.Caption = "ERROR"
        Exit Sub
    End If
    
    lblNEXT.Caption = nextDate

End Sub

Private Sub txtRESISTANCE_AfterUpdate() 'used to convert units

Dim conduct As Double
Dim resist As Double

conduct = txtRESISTANCE.Value
resist = Round(1 / conduct)
lblRESISTANCE.Caption = resist

End Sub

Private Sub txtTEMPERATURE_AfterUpdate() 'used to convert units

Dim celsius As Double
Dim fahren As Double

celsius = txtTEMPERATURE.Value
fahren = Round(celsius * (9 / 5) + 32, 2)
lblTEMPERATURE.Caption = fahren

End Sub


