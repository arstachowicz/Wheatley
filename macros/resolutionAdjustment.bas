Attribute VB_Name = "resolutionAdjustment"
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
 
 Private Function resAdjust()

    Dim ScreenHeight, ScreenWidth As Integer
    Dim Scrn As SCREEN
    Dim ret As Long
    Dim ctl As Control
    
    ret = GetClientRect(CLng(GetDesktopWindow()), Scrn)
    ScreenHeight = Scrn.bottom - Scrn.top
    ScreenWidth = Scrn.Right - Scrn.Left
    
    With Forms![fmHome]![NavigationSubform].Form![Child10]
        If ScreenHeight = 768 And ScreenWidth = 1366 Then
            ![Child325].Width = 12200 * (ScreenWidth * 1.5 / 1920)
            ![Child325].Height = 4200 * (ScreenHeight / 1080)
            ![TabCtl155].TabFixedWidth = 4000
            ![TabCtl155].Width = 4000 * 3
        End If
        
        If ScreenHeight = 900 And ScreenWidth = 1600 Then
            ![Child325].Width = 13600 * (ScreenWidth * 1.5 / 1920)
            ![Child325].Height = 4000 * (ScreenHeight / 1080)
            ![TabCtl155].TabFixedWidth = 4000
            ![TabCtl155].Width = 4000 * 3
        End If
    End With
End Function

