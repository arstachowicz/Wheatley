Attribute VB_Name = "maintenanceCheck"
Option Compare Database
Option Explicit

Function incompleteTasks(ByVal taskID As Integer) As String
'creates a query to determine uncompleted tasks remaining in maintenance logs
'returns list as string to populate listbox on appropriate form


'Fill list box with tasks yet to be completed
    Dim db As DAO.Database
    Dim rs As Recordset
    Dim title As String
    Dim qryName As String
    Dim fie As Field
    Dim listitems As Integer

qryName = DLookup("[combinedQuery]", "tblTASKLIST", "[ID] = " & taskID)
Set db = CurrentDb
Set rs = db.OpenRecordset(qryName)

    With rs
        If .RecordCount = 0 Then
            For Each fie In .Fields
                title = title & fie.Properties("Caption") & ";" 'gets task title from column header
            Next fie
        Else:
            .MoveFirst
            For Each fie In .Fields
                If fie.Value = 0 Then 'create a list of tasks not yet completed, signified by 0 value
                    title = title & fie.Properties("Caption") & ";"
                End If
            Next fie
        End If
        .Close
    End With
        
        'remove "Grouper" from list
        listitems = Len(title)
        If Left(title, 8) = "Grouper;" Then
            title = Right(title, listitems - 8)
            listitems = Len(title)
        End If
        
        'remove "Date" from list
        If Left(title, 5) = "Date;" Then
            title = Right(title, listitems - 5)
        End If
   
        'if list is empty (all tasks are done) then display states as such
        If listitems = 0 Then
            title = "Complete additional tasks as needed"
        End If
    
    incompleteTasks = title
    db.Close

End Function

Function TaskCheckAlert(ByVal queryName As String, ByVal taskTitle As String, ByVal ID As Integer, ByVal frequency As Integer, ByVal sTbl As String)

On Error GoTo Error_Handler

Dim db As DAO.Database
Dim rs1 As DAO.Recordset
Dim rs1 As DAO.Recordset
Dim qdf As DAO.QueryDef
Dim fie As Field

Dim oOutlook As Object
Dim oEmailItem As MailItem

Dim iString As Integer
Dim emailList As String
Dim sEmail As String
Dim sEmail2 As String
Dim qdfOLD As String
Dim missingtask As String
Dim varDate As String
Dim recordedDate As Date
Dim incomplete As Boolean

Set db = CurrentDb
Set qdf = db.QueryDefs(queryName)

qdfOLD = qdf.SQL 'save old SQL

If frequency = 1 Then
    qdf.SQL = Replace(qdf.SQL, "=Date()", ">=DateAdd('d',-7,Date()) And ([" & sTbl & "].[timeDate])<Date()")
ElseIf frequency = 7 Then
    qdf.SQL = Replace(qdf.SQL, "Format(Date(),'ww')", "Format(Date(),'ww')-1")
End If

Set rs1 = qdf.OpenRecordset()
Set rs2 = db.OpenRecordset("qryCombinedTasks")

Set oOutlook = GetObject(, "Outlook.Application")
    If oOutlook Is Nothing Then
        Set oOutlook = CreateObject("Outlook.Application")
    End If

Set oEmailItem = oOutlook.CreateItem(olMailitem)
sEmail = taskTitle 'sets email body to title of task

'sets task to run every Monday and only send email if tasks were missed
With rs1
    If .RecordCount <> 0 Then
        
        
        Do While Not .EOF
                
                'Checks if a task was missed
                For Each fie In .Fields
                    If fie.Value = 0 Then 'find missing tasks, which are valued at 0
                        incomplete = True
                    End If
                Next fie
                
                'pulls information on which tasks were missed
                If incomplete = True Then
                    recordedDate = ![timeDate]
                    sEmail = sEmail & vbCr & vbCr & recordedDate & " -- "
                    
                    For Each fie In .Fields
                        If fie.Value = 0 Then 'find missing tasks, which are valued at 0
                            missingtask = fie.Caption
                            sEmail2 = sEmail2 & missingtask & ", "
                        End If
                    Next fie
                End If
                
               'corrects grammar by removing comma
                iString = Len(sEmail2)
                If iString <> 0 Then
                    If Right(sEmail2, 2) = ", " Then
                        sEmail = sEmail & Left(sEmail2, iString - 2) & vbCr & vbCr
                    End If
                End If
                
            incomplete = False
            .MoveNext
        Loop
    Else:
        missingtask = "No PM tasks were completed"
        sEmail = sEmail + missingtask
    End If
End With

'checks if anything was entered into the body, creates an email
If (sEmail <> taskTitle) And (sEmail <> "") Then

    With rs2
        .MoveFirst
        
        Do While Not .EOF
            If ![tblTASKLIST.ID] = ID Then 'build email field if multiple people
                emailList = emailList & ![tblSupervisors.email] & "; "
            End If
            .MoveNext
        Loop
        
    End With
  
    With oEmailItem
        .To = emailList
        .Subject = "Missing Maintenance Tasks Summary"
        .Body = "This is an automated alert to notify that the following items were not completed within the last week: " & vbCr & vbCr & sEmail
        .Send
    End With
    
End If

'Clear objects
    Set oEmailItem = Nothing
    Set oOutlook = Nothing
    sEmail = ""
    qdf.SQL = qdfOLD 'clears sql criteria

'Close the queries to keep system from crashing/slowing
    rs1.Close
    rs2.Close
    qdf.Close
    db.Close
    Exit Function

Error_Handler_Exit:
    On Error Resume Next
    If Not rs1 Is Nothing Then
        rs1.Close
        Set rs1 = Nothing
    End If
    If Not rs2 Is Nothing Then
        rs2.Close
        Set rs2 = Nothing
    End If
    If qdfOLD <> "" Then
        qdf.SQL = qdfOLD
    End If
    If Not db Is Nothing Then
        Set db = Nothing
    End If
    
    Exit Function

Error_Handler:
    MsgBox "The following error has occured" & vbCrLf & vbCrLf & "Error Number: " & Err.Number & vbCrLf & _
           "Error Source: Generating Maintenance Table" & vbCrLf & "Error Description: " & Err.Description & _
           Switch(Erl = 0, "", Erl <> 0, vbCrLf & "Line No: " & Erl), vbOKOnly + vbCritical, "An Error has Occured!"
           
    Resume Error_Handler_Exit

End Function


