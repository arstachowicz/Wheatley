Attribute VB_Name = "convertValues"
Option Compare Database
Option Explicit

'
' COPYRIGHT © DECISION MODELS LIMITED 2006. All rights reserved
' May be redistributed for free but
' may not be sold without the author's explicit permission.
'
'Private Declare Function getFrequency Lib "kernel32" Alias _
                                      "QueryPerformanceFrequency" (cyFrequency As Currency) As Long
'Private Declare Function getTickCount Lib "kernel32" Alias _
                                      "QueryPerformanceCounter" (cyTickCount As Currency) As Long
                                      
                                      
#If VBA7 Then
    'Private Declare PtrSafe Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
        (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
    Private Declare PtrSafe Function getFrequency Lib "kernel32" Alias _
                                      "QueryPerformanceFrequency" (cyFrequency As Currency) As Long
    Private Declare PtrSafe Function getTickCount Lib "kernel32" Alias _
                                      "QueryPerformanceCounter" (cyTickCount As Currency) As Long
#Else
    Private Declare Function getFrequency Lib "kernel32" Alias _
                                      "QueryPerformanceFrequency" (cyFrequency As Currency) As Long
    Private Declare Function getTickCount Lib "kernel32" Alias _
                                      "QueryPerformanceCounter" (cyTickCount As Currency) As Long
#End If


Private Const sCPURegKey = "HARDWARE\DESCRIPTION\System\CentralProcessor\0"
Private Const HKEY_LOCAL_MACHINE As Long = &H80000002

#If VBA7 Then
    Private Declare PtrSafe Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
    Private Declare PtrSafe Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
    Private Declare PtrSafe Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
#Else
    Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
    Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
    Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
#End If

Function MicroTimer() As Double
'
' returns seconds
'
    Dim cyTicks1 As Currency
    Static cyFrequency As Currency
    '
    MicroTimer = 0
    If cyFrequency = 0 Then getFrequency cyFrequency            ' get ticks/sec
    getTickCount cyTicks1                                       ' get ticks
    If cyFrequency Then MicroTimer = cyTicks1 / cyFrequency     ' calc seconds

End Function


Function convert2id()

'Ignore empty strings
intLength = Len(techID)
If intLength = 0 Then
    Exit Function
End If

'If there's a leading or trailing ; then remove
If Mid(techID, 1, 1) = ";" Then
    Mid(techID, 1, 1) = " "
    techID = Trim(techID)
    intLength = Len(techID)
    If intLength = 0 Then
        Exit Function
    End If
End If

If Mid(techID, intLength, 1) = ";" Then
    Mid(techID, intLength, 1) = " "
    techID = Trim(techID)
    intLength = Len(techID)
    If intLength = 0 Then
        Exit Function
    End If
End If

intStartSearch = 1


' Loop Through And Parse All the Items
Do
    intNextComma = InStr(intStartSearch, techID, strComma)
    If intNextComma <> 0 Then
        intNumberOfArrayEntries = intNumberOfArrayEntries + 1
        intStartOfItem = intStartSearch
        intLengthOfItem = intNextComma - intStartOfItem
        strStateArray(intNumberOfArrayEntries) = Trim(Mid(strInputString, intStartOfItem, intLengthOfItem))
        intStartSearch = intNextComma + 1
    Else
        intNumberOfArrayEntries = intNumberOfArrayEntries + 1
        intStartOfItem = intStartSearch
        intLengthOfItem = intLength - intStartSearch + 1
        strStateArray(intNumberOfArrayEntries) = Trim(Mid(techID, intStartOfItem, intLengthOfItem))
    End If
    
Loop Until intNextComma = 0
    
    
End Function

Function valTransfer()
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim sTbl As String
Dim lOriginal As Long
Dim sOrig As String
Dim lNew As Long

sTbl = "tblPART_07"


Set db = CurrentDb
Set rs = db.OpenRecordset(sTbl)

    With rs
        .MoveFirst
      
        Do Until .EOF
            lOriginal = Nz(![useage], 0)
            .Edit
            If (lOriginal = 15) And (![subcategory] = 1) Then
                ![subcategory] = 9
            Else:
                '![useage] = Null
            End If
            
            .Update
            .MoveNext
        Loop
        .Close
    End With
db.Close

End Function

Function sqlStr(cmd As Control) As String
'Places quotation marks around strings and none if there's a null value. Null is entered as a string in its stead. Meant for building SQL commands
'example: fmEP_EDIT

        If (Trim(cmd) <> "") And (IsNull(cmd) = False) Then
            sqlStr = Replace(cmd.Value, Chr(34), """") 'correct quotation marks
            sqlStr = Trim(sqlStr)
            sqlStr = """" & sqlStr & """"
        Else:
            sqlStr = "Null"
        End If
        
End Function
