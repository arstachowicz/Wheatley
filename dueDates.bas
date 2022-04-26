Attribute VB_Name = "dueDates"
Option Compare Database
Option Explicit

Function nextTestDate(ByVal taskID As Long) As Date

On Error GoTo lookupErr
Dim lastDate As Date
Dim tabLoc As String
Dim freq As Integer


    freq = DLookup("[frequency]", "tblTASKLIST", "[ID] = " & taskID)
    tabLoc = DLookup("[tableREL]", "tblTASKLIST", "[ID] = " & taskID)
    lastDate = DMax("[timeDate]", tabLoc)
    
    If freq = 1 Then 'daily
        nextTestDate = DateAdd("d", 1, lastDate)
    ElseIf freq = 2 Then 'every other day
        nextTestDate = DateAdd("d", 2, lastDate)
    ElseIf freq = 7 Then 'weekly
        nextTestDate = DateAdd("ww", 1, lastDate)
    ElseIf freq = 14 Then 'biweekly
        nextTestDate = DateAdd("ww", 2, lastDate)
    ElseIf freq = 30 Then 'monthly
        nextTestDate = DateAdd("m", 1, lastDate)
    ElseIf freq = 81 Then 'quarterly
        nextTestDate = DateAdd("q", 1, lastDate)
    ElseIf freq = 365 Then 'annually
        nextTestDate = DateAdd("yyyy", 1, lastDate)
    Else:
        MsgBox "Error when pulling testing frequency information.", vbOKOnly, "Error"
    End If
    
         
Macro1_Exit:
    Exit Function

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
End Function

