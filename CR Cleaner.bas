Attribute VB_Name = "Module1"
Function colFinder(lCol As Long) As Long
Dim lTotCol As Long
Dim m As Long
Dim sStr As String

'1: "Notes"
'2: "Labor Qty"
'3: "Part"

    If lCol = 1 Then
        sStr = "Notes"
    ElseIf lCol = 2 Then
        sStr = "Labor Qty"
    ElseIf lCol = 3 Then
        sStr = "Part"
    End If
    
    'finds column and assigns it to m
    m = 1
    lTotCol = ActiveSheet.Cells(1, Columns.Count).End(xlToLeft).Column
    
    Do Until m = lTotCol
        If ActiveSheet.Cells(1, m).Value = sStr Then
            colFinder = m
            Exit Function
        End If

        m = m + 1
    Loop
    
    MsgBox "There is no column """ & sStr & """ on this worksheet. Please keep all original column labels."
    
End Function


Sub strCleaner()
'loop through data, remove everything in the brackets and leave the rest

    Dim sLeft As String
    Dim sRight As String
    Dim sOrig As String
    Dim sFinal As String
    Dim lTotRow As Long
    Dim i As Long
    Dim j As Long
    Dim k As Long
    Dim m As Long
    Dim lStr As Long
    
    lTotRow = WorksheetFunction.CountA(ActiveSheet.Range("A:A"))
    i = lTotRow
    m = colFinder(1)
    
    Application.ScreenUpdating = False
    
    Do Until i = 1
        sOrig = Trim(ActiveSheet.Cells(i, m).Value)
        lStr = Len(sOrig)
        
        'if anything is entered to left of brackets, keep
        If InStr(1, sOrig, "[|") > 0 Then
            j = InStr(1, sOrig, "[|")
            sLeft = Left(sOrig, j - 1)
            sRight = ""
            
            'keep anything written after brackets
            If InStr(j + 2, sOrig, "||]") > 0 Then
                k = InStr(j, sOrig, "||]") + 2
                sRight = Right(sOrig, lStr - k)
            ElseIf InStr(j + 2, sOrig, "|]") > 0 Then
                k = InStr(j, sOrig, "|]") + 1
                sRight = Right(sOrig, lStr - k)
            End If
            
            'delete name and everything within brackets and reunify
            sFinal = Trim(sLeft & sRight)
            
            'if the tech didn't write anything other than their name, delete the row
            If (sFinal <> "") Then
                ActiveSheet.Cells(i, m).Value = sFinal
            Else:
                ActiveSheet.Rows(i).Delete
            End If

        End If
        sFinal = ""
        i = i - 1 'working from bottom up to keep rows from skipping
    Loop

End Sub

Sub dmrRemoval()
'loop through data, remove everything in the brackets and leave the rest

    Dim sLeft As String
    Dim sOrig As String
    Dim lTotRow As Long
    Dim i As Long
    Dim m As Long
    
    lTotRow = WorksheetFunction.CountA(ActiveSheet.Range("A:A"))
    i = lTotRow
    Application.ScreenUpdating = False
    m = colFinder(1)
    
    'loop from bottom up to avoid skipping over deleted rows
    Do Until i = 0
        sOrig = ActiveSheet.Cells(i, m).Value
        
        If InStr(1, sOrig, "DMR") > 0 Then
            
            sLeft = Left(sOrig, 3)
            
            If sLeft = "DMR" Then
                ActiveSheet.Range(m & i & ":" & m & i).EntireRow.Delete
            End If
        ElseIf (InStr(1, sOrig, "NonConf") > 0) Then
            ActiveSheet.Rows(i).Delete
        ElseIf (InStr(1, sOrig, "Rework") > 0) Or (InStr(1, sOrig, "scratch") > 0) Then
            ActiveSheet.Rows(i).Delete
        End If
        i = i - 1
    Loop
End Sub

Sub opOptimizing()

    Dim lTotRow As Long
    Dim lTotCol As Long
    Dim i As Long
    Dim j As Long
    Dim j1 As Long
    Dim m As Long
    Dim n As Long
    Dim qty As Long
    
    'reads strings to find operations listed in the comments
    Application.ScreenUpdating = False
    'counts unempty rows and columns
    lTotRow = WorksheetFunction.CountA(ActiveSheet.Range("A:A"))
    Call opHeader 'create headers
    i = 2 'skips header
    j1 = ActiveSheet.Cells(1, Columns.Count).End(xlToLeft).Column 'find empty column
    j = j1 - 8 'buffer column
    
    m = colFinder(1)
    n = colFinder(2)
    
    Application.ScreenUpdating = False
    
    Do Until j = j1 + 1
        Do Until i = lTotRow
            With ActiveSheet
            
                sOrig = .Cells(i, m).Value
                qty = .Cells(i, n).Value
                
                
                If j = (j1 - 10) Then 'clean
                    If (InStr(1, sOrig, "rinse", vbTextCompare) > 0) Or _
                        InStr(1, sOrig, "clean", vbTextCompare) > 0 Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 9) Then 'dried
                    If (InStr(1, sOrig, "dried", vbTextCompare) > 0) Or _
                        InStr(1, sOrig, "dry", vbTextCompare) > 0 Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 8) Then 'alloy check
                    If (InStr(1, sOrig, "alloy", vbTextCompare) > 0) Then
                       .Cells(i, j).Value = qty
                    End If
                
                ElseIf (j = j1 - 7) Then 'inspect
                    If (InStr(1, sOrig, "inspect", vbTextCompare) > 0) Or _
                        (InStr(1, sOrig, "insp", vbTextCompare) > 0) Then
                       .Cells(i, j).Value = qty
                    End If
                
                ElseIf (j = j1 - 6) Then 'leak check
                    If (InStr(1, sOrig, "leak", vbTextCompare) > 0) Or _
                       (InStr(1, sOrig, "leek", vbTextCompare) > 0) Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 5) Then 'bagged
                    If (InStr(1, sOrig, "lable", vbTextCompare) > 0) Or _
                        InStr(1, sOrig, "label", vbTextCompare) > 0 Or _
                        InStr(1, sOrig, "bag", vbTextCompare) > 0 Or _
                        InStr(1, sOrig, "pack", vbTextCompare) > 0 Or _
                        InStr(1, sOrig, "pkg", vbTextCompare) > 0 Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 4) Then 'set screws
                    If (InStr(1, sOrig, "screw", vbTextCompare) > 0) Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 3) Then 'press
                    If (InStr(1, sOrig, "press", vbTextCompare) > 0) Then
                       .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1 - 2) Then 'weldment?
                    If (weldmentCol(i, j) = True) Then
                        .Cells(i, j).Value = qty
                    End If
                ElseIf (j = j1) Then 'rework
                    If (InStr(1, sOrig, "DMR", vbTextCompare) > 0) Or _
                        InStr(1, sOrig, "Rework", vbTextCompare) > 0 Then
                        .Cells(i, j).Value = qty
                    End If
                End If
            
            End With
            
            qty = 0
            i = i + 1
        Loop
        i = 2
        j = j + 1
    Loop
    
End Sub

Sub toQty()
    Dim lTotRow As Long
    Dim i As Long
    Dim j As Long
    Dim m As Long
    Dim qty As Long
    Dim sOrig As Long
    
    lTotRow = WorksheetFunction.CountA(ActiveSheet.Range("A:A"))
    i = 2
    j = 14
    m = colFinder(2)
    Application.ScreenUpdating = False
    
    Do Until j = 21
        Do Until i = lTotRow
            sOrig = 0
            sOrig = Sheet1.Cells(i, j).Value

               If (sOrig = 1) Then
                   qty = ActiveSheet.Cells(i, m).Value
                   ActiveSheet.Cells(i, j).Value = qty
               End If
               
            i = i + 1
        Loop
        i = 2
        j = j + 1
    Loop
End Sub

Sub opHeader()
Dim j As Long

With ActiveSheet

    j = .Cells(1, Columns.Count).End(xlToLeft).Column 'find empty column
    j = j + 2
    
    .Cells(1, j).Value = "Clean"
    .Cells(1, j + 1).Value = "Dried"
    .Cells(1, j + 2).Value = "Alloy Check"
    .Cells(1, j + 3).Value = "Inspection"
    .Cells(1, j + 4).Value = "Leak Check"
    .Cells(1, j + 5).Value = "Bagged"
    .Cells(1, j + 6).Value = "Set Screw"
    .Cells(1, j + 7).Value = "Press"
    .Cells(1, j + 8).Value = "Weldments"
    .Cells(1, j + 9).Value = "Weldments/Cust"
    .Cells(1, j + 10).Value = "Rework"

End With

End Sub

Function weldmentCol(lRow As Long, lCust As Long) As Boolean
Dim sPart As String
Dim sCust As String
Dim lCol As Long
Dim i As Long
Dim j As Long

    weldmentCol = False
    lCol = colFinder(3)
    sPart = ActiveSheet.Cells(lRow, lCol).Value 'where to find part# in active spreadsheet
    j = WorksheetFunction.CountA(Sheet1.Range("A:A")) 'count rows in Sheet1/Weldments
    i = 1
    
    Do Until i = j
        sweld = Sheet1.Cells(i, "A").Value 'column A where weldment info is located
        If sPart = sweld Then
            weldmentCol = True
            
            If Left(sPart, 6) = "03-15-" Or Left(sPart, 5) = "3/15/" Then 'AMAT
                sCust = "AMAT"
            ElseIf Left(sPart, 6) = "03-33-" Or Left(sPart, 5) = "3/33/" Then 'LAM
                sCust = "LAM"
            ElseIf Left(sPart, 6) = "03-29-" Or Left(sPart, 5) = "3/29/" Then 'Novellus
                sCust = "Novellus"
            ElseIf Left(sPart, 6) = "03-45-" Then  'ASM
                sCust = "ASM"
            ElseIf Left(sPart, 6) = "03-88-" Then  'Oxford
                sCust = "Oxford Instruments"
            ElseIf Left(sPart, 6) = "21-24-" Then  'Ichor
                sCust = "Ichor"
            ElseIf Left(sPart, 6) = "21-61-" Then  'Reno
                sCust = "Reno"
            ElseIf Left(sPart, 6) = "21-09-" Then  'Pivotal Systems
                sCust = "Pivotal Systems"
            ElseIf Left(sPart, 6) = "21-83-" Then  'TSI
                sCust = "TSI"
            Else:
                sCust = "Other" 'if nothing is in place
            End If
            
            ActiveSheet.Cells(lRow, lCust + 1).Value = sCust
            
            Exit Do
        End If
        i = i + 1
    
    Loop

End Function
