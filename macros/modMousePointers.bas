Attribute VB_Name = "modMousePointers"
Option Compare Database
Option Explicit

#If VBA7 Then
    Declare PtrSafe Function SetClassLong Lib "user32" Alias "SetClassLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
#Else
    Declare Function SetClassLong Lib "user32" Alias "SetClassLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
#End If

'=====================================================================
' Globals for cursor handling
    Global Const GCL_HCURSOR = (-12)
    Global hSwapCursor As Long
    Global hAniCursor As Long

'=====================================================================

Public Const IDC_ARROW = 32512&
Public Const IDC_IBEAM = 32513&
Public Const IDC_WAIT = 32514&
Public Const IDC_CROSS = 32515&
Public Const IDC_UPARROW = 32516&
Public Const IDC_ICON = 32641&
Public Const IDC_SIZENWSE = 32642&
Public Const IDC_SIZENESW = 32643&
Public Const IDC_SIZEWE = 32644&
Public Const IDC_SIZENS = 32645&
Public Const IDC_SIZEALL = 32646&
Public Const IDC_NO = 32648&
Public Const IDC_HAND = 32649&
Public Const IDC_APPSTARTING = 32650&

#If VBA7 Then
    Declare PtrSafe Function LoadCursorBynum Lib "user32" Alias "LoadCursorA" (ByVal hInstance As Long, ByVal lpCursorName As Long) As Long
    Declare PtrSafe Function LoadCursorFromFile Lib "user32" Alias "LoadCursorFromFileA" (ByVal lpFileName As String) As Long
    Declare PtrSafe Function SetCursor Lib "user32" (ByVal hCursor As Long) As Long
#Else
    Declare Function LoadCursorBynum Lib "user32" Alias "LoadCursorA" (ByVal hInstance As Long, ByVal lpCursorName As Long) As Long
    Declare Function LoadCursorFromFile Lib "user32" Alias "LoadCursorFromFileA" (ByVal lpFileName As String) As Long
    Declare Function SetCursor Lib "user32" (ByVal hCursor As Long) As Long
#End If


Public Function Arrow_Pointer()
    SCREEN.MousePointer = 1
End Function

Function ChangeCursor(strPathToCursor As String)

    On Error GoTo Error_On_ChangeCursor

' Example :
'           ChangeCursor ("C:\Program Files\Microsoft Office\Office\Hand.cur")

  If Dir(strPathToCursor) <> "" Then
      Dim lngRet As Long
      lngRet = LoadCursorFromFile(strPathToCursor)
      lngRet = SetCursor(lngRet)
  End If
  
Exit_ChangeCursor:

    Exit Function
    
Error_On_ChangeCursor:
    
    Resume Exit_ChangeCursor
  
End Function

Public Function Default_Pointer()
    SCREEN.MousePointer = 0
End Function

Public Function IBeam_Pointer()
    SCREEN.MousePointer = 3
End Function

Function MouseCursor(CursorType As Long)

' Example:  =MouseCursor(32512)     ' using Public Constants from above

  Dim lngRet As Long
  lngRet = LoadCursorBynum(0&, CursorType)
  lngRet = SetCursor(lngRet)
End Function

Public Function Replace_Cursor(PathToFile As String)

    ' Return handle from animated cursor
    
    ' Original - hAniCursor = LoadCursorFromFile("C:\WINDOWS\CURSORS\GLOBE.ANI")
    
    hAniCursor = LoadCursorFromFile(PathToFile)
    ' Swap current mouse pointer with new animated cursor :
    hSwapCursor = SetClassLong(SCREEN.ActiveForm.hwnd, GCL_HCURSOR, hAniCursor)
        
        
End Function

Public Function Restore_Cursor()

    ' Remove animated cursorand replace with saved index :
    
    hSwapCursor = SetClassLong(SCREEN.ActiveForm.hwnd, GCL_HCURSOR, hSwapCursor)
    
End Function


