Attribute VB_Name = "errorHandling"
Option Compare Database
Option Explicit
Public sIDFie As String

Function ckIncomplete(sLike As String, frm As Form, sendAlrtMesg As Boolean, lID As Long) As Boolean
    'check if ALL check boxes, following a similar name, have at least one value entered. If all empty, immediately stop and kick back entry
    'ID = 1, checks for at least one entered value
    'ID = 2, checks for all values to be entered
    'bMsg surpresses error alerts
    
    Dim bEmpty As Boolean
        'False means all values/a value was entered
        'True means all values are empty
    Dim ctrl As Control
    Dim i, j As Long
    Dim sTitle, sBody As String
    
    bEmpty = True
    sTitle = "Missing Info"
    i = 0 'counts total textboxes
    j = 0 'counts total FILLED textboxes
    
    If lID = 1 Then 'check if at least one value has been entered
    
        sBody = "Information is missing. At least one value must be entered."
            For Each ctrl In frm
                If ctrl.Name Like sLike Then
                
                    If (ctrl.ControlType = acToggleButton) Or (ctrl.ControlType = acCheckBox) Then
                        If (ctrl.Value = True) Then
                            bEmpty = False
                            Exit For
                        End If
                    ElseIf (ctrl.ControlType = acComboBox) Or (ctrl.ControlType = acTextBox) Then
                        If (Trim(ctrl.Value) <> "") Or (IsNull(ctrl) = False) Then
                            bEmpty = False
                            ctrl.SetFocus
                            Exit For
                        End If
                    End If
                    
                End If
            Next
        
    
    ElseIf lID = 2 Then 'check all checkboxes to see if they are marked as True
    
        sBody = "All fields need a value. Check your entry for all fields to have an entered value."
            For Each ctrl In frm.Controls
                If ctrl.Name Like sLike Then
                    i = i + 1
                    
                    If (ctrl.ControlType = acToggleButton) Or (ctrl.ControlType = acCheckBox) Then
                        If (ctrl = True) Then
                            j = j + 1 'used to count total FILLED textboxes
                        End If
                    ElseIf (ctrl.ControlType = acComboBox) Or (ctrl.ControlType = acTextBox) Then
                        If (Trim(ctrl) <> "") Or (IsNull(ctrl) = False) Then
                            j = j + 1
                        End If
                    End If
                    
                End If
            Next
            
            If i = j Then
                bEmpty = False
            Else:
                bEmpty = True
            End If
            
    End If
    
    'send a message if sendAlrtMesg is assigned as TRUE. Surpress messages with FALSE
    If (bEmpty = True) And (sendAlrtMesg = True) Then
        MsgBox sBody, vbOKOnly, sTitle
    End If
    
    ckIncomplete = bEmpty
    
End Function

Function dupPartEntry(ByVal qryName As String, ctrl As Control, ByVal sTbl As String, ByVal sVal As String, Optional ByVal frm As String, Optional ByVal sPath As String)
On Error GoTo Macro1_Err

'qryname: Name of the query that contains the "duplicate" fields
'ctrl: The control that holds the part number
'sTbl: the part number table
'sFie: the string of fields in the table of sTbl
'sVal: the string of values entered, corresponding to the fields stored in sFie
'frm: name of the edit form
'sPath: how to direct user to edit form

Dim db As DAO.Database
Dim rs As Recordset
Dim prtNum, sSQL As String
Dim lID, lID2 As Long

prtNum = Trim(ctrl.Value)

'declare optional variables. Will open nothing and browseto nothing if left empty
If (IsMissing(frm) = True) Then
    frm = Empty
End If

If (IsMissing(sPath) = True) Then
    sPath = ""
End If

If (prtNum <> "") Then
    
    Call sqlEntryBuilder(sTbl, sVal, False)
    
    Set db = CurrentDb
    Set rs = db.OpenRecordset(qryName)
    
    'if already in the system, send an alert and delete the most recent dup record
    With rs
        .Requery
        If .RecordCount > 1 Then
            .MoveFirst 'pull both autoIDs for duplicate items (in case we want to rewrite code to open to edit form or replace older file)
            
            If sIDFie = "autoID" Then
                lID = !autoID
                .MoveNext
                lID2 = !autoID
            ElseIf sIDFie = "ID" Then
                lID = !ID
                .MoveNext
                lID2 = !ID
            End If
            
            MsgBox prtNum & " has already been entered."
            sSQL = "DELETE FROM " & sTbl & " WHERE " & sIDFie & "=" & lID & ";"
            db.Execute sSQL, dbFailOnError
            .Requery
            ctrl.Value = Null
            ctrl.SetFocus
             
            If (sPath <> "") And (frm <> Empty) Then
                'browse to edit form, opening to record with the pre-entered value
                DoCmd.BrowseTo acForm, frm, sPath, "[" & sIDFie & "] = " & lID2, "", 1
            End If
            
        Else:
            'shows the string in the message, not the ID #
            If (IsNumeric(prtNum) = True) Then
                MsgBox "Successfully added new data for part!"
            Else:
                MsgBox "Successfully added " & prtNum & "!"
            End If
            ctrl.SetFocus
        End If
        .Close
    End With

End If

    
Macro1_Exit:
    Exit Function

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Function

Function sqlEntryBuilder(ByVal sTbl As String, ByVal sVal As String, Optional ByVal ignoreDateFies As Boolean)

'sTbl: name of table
'sVal: MUST be in order of field list
'ignoreDateFies: True means cut these from the SQL code, insert today's date and time.
                'False means you want to keep those in to enter something that happened in the past

Dim db As DAO.Database
Dim tbl As DAO.Recordset
Dim fie As Field
Dim sFieList As String
Dim sSQL As String
Dim i As Long

Set db = CurrentDb
Set tbl = db.OpenRecordset(sTbl)

    If (IsMissing(ignoreDateFies) = True) Then
        ignoreDateFies = True
    End If
    
    With tbl
        For Each fie In .Fields
            If fie.Name = "r&d" Then
                sFieList = sFieList & "[R&D], "
            Else:
                sFieList = sFieList & fie.Name & ", "
            End If
        Next fie
        .Close
    End With
    
    'remove trailing comma
    i = Len(sFieList)
    sFieList = Left(sFieList, i - 2)
    
    If Left(sFieList, 8) = "autoID, " Then
        i = Len(sFieList)
        sIDFie = Left(sFieList, 6) 'used for dupPartEntry
        sFieList = Right(sFieList, i - 8)
    ElseIf Left(sFieList, 4) = "ID, " Then
        i = Len(sFieList)
        sIDFie = Left(sFieList, 2) 'used for dupPartEntry
        sFieList = Right(sFieList, i - 4)
    End If
    
    'is date/time set automatically, or do you want user to control date entry? True means automatic, false means user needs to enter a value
    If ignoreDateFies = True Then
        If Left(sFieList, 10) = "timeDate, " Then
            i = Len(sFieList)
            sFieList = Right(sFieList, i - 10)
        End If
        
        If Left(sFieList, 10) = "timeHour, " Then
            i = Len(sFieList)
            sFieList = Right(sFieList, i - 10)
        End If
    End If
    
    sSQL = "INSERT INTO " & sTbl & " (" & sFieList & ") " & vbCr & _
               "VALUES (" & sVal & ");"
    
    db.Execute sSQL, dbFailOnError
    
End Function

Function wrongFie(ctrl As Control, ByVal left21 As String, ByVal left22 As String) As Boolean
'to avoid mistyping part numbers in non corresponding fields, run this function
'True = bad entry, clear and exit field
'False = a wrong entry was not entered
Dim sEntr As String

sEntr = Trim(ctrl.Value)

    If (sEntr <> "") Then
        If (Left(sEntr, 2) = left21) Or (Left(sEntr, 2) = left22) Then
            wrongFie = True
            MsgBox "Check the part number has been entered. An incorrect value has been entered."
            ctrl.SetFocus
        Else:
            wrongFie = False
        End If
    End If
    
End Function
