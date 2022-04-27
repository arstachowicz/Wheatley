Attribute VB_Name = "emailBuilder"
Option Compare Database
Option Explicit

Function computerName() As Boolean
'returns TRUE if the CL computer is running the code. Compares operating computer to computer name stored on database. Prevents multiple emails being sent out at once.

'variable callouts
    Dim sCompName As String
    Dim sCompName_CL As String
    Dim sTable As String

'set recordset to pull from tasklist
    sTable = "tblJOIN_BUILDING_ROOM" 'room locator

'determine computer name (CL's comp) that is to send emails
    sCompName_CL = DLookup("[computername]", sTable, "[buildingID] = 1 and [roomID] = 1") 'lookup CL's computer name
    sCompName = Environ$("computername") 'what is this computer's name?
    
    If (sCompName_CL = sCompName) Then
        computerName = True
    Else:
        computerName = False
    End If

End Function

Function emailFail()
                  
On Error Resume Next

Dim db As DAO.Database
Dim rsTask As DAO.Recordset
  
Dim oOutlook As Object
Dim oEmailItem As MailItem
Dim lID As Long
Dim sEmail As String
Dim sTable As String
Dim lastAlert As Date

    sTable = "tblTaskList"
    lID = 2 'where the date is being stored in sTable
    Set db = CurrentDb
    Set rsTask = db.OpenRecordset(sTable)
    lastAlert = DLookup("[check]", sTable, "[ID] = 2") 'checks when last alert email was sent

If lastAlert < Date Then 'prevents multiple alert emails being sent out per day
    
    Set oOutlook = GetObject(, "Outlook.Application")
        
    If oOutlook Is Nothing Then
        Set oOutlook = CreateObject("Outlook.Application")
    End If
    
    Set oEmailItem = oOutlook.CreateItem(olMailitem)
    sEmail = DLookup("[email]", "tblSupervisors", "[ID] = 3") 'sends an email to Amanda Stachowicz
    
    'creates an email
        With oEmailItem
            .To = sEmail
            .Subject = "Email Failure"
            .Body = "The email alert system has failed."
            .Send
        End With
                        
        'Clear objects
            sEmail = ""
            Set oEmailItem = Nothing
            Set oOutlook = Nothing
        
    'updates date to prevent multiple emails for that day
        With rsTask
            .FindFirst "ID= " & lID
            .Edit
            !Check = Date
            .Update
        End With
      
End If

    rsTask.Close
    db.Close
    
End Function

Function AutoEmail()

On Error Resume Next

Dim rs As DAO.Recordset
Dim oOutlook As Object
Dim oEmailItem As MailItem

Dim taskName As String
Dim sEmail As String
Dim sBody As String
Dim sCombD As String 'combined daily string
Dim sCombW As String 'combined weekly string
Dim sMess As String
Dim qryInfo As String

Dim lastOccur As Date

Dim iSupCount As Long
Dim iSupMax As Long
Dim freq As Long
Dim dayWeek As Long
Dim dayPM As Long
Dim taskID As Long

Dim combined As Boolean


    Set oOutlook = GetObject(, "Outlook.Application")
        If oOutlook Is Nothing Then
            Set oOutlook = CreateObject("Outlook.Application")
        End If
        
    Set rs = CurrentDb.OpenRecordset("qryLateTasks")
    Set oEmailItem = oOutlook.CreateItem(olMailitem)
    
    'day/number assignments
    dayWeek = Weekday(Date, vbSunday) 'sets Sunday to 1
    dayPM = 2 'send combined, less frequent tasks only on Monday

    If rs.RecordCount > 0 Then 'checks if record set has any values entered
        'set start and end supervisor values
        iSupCount = 1
        iSupMax = DMax("[ID]", "tblSupervisors")
        
        'develop a string of missed tasks for each supervisor then send as an email
        Do Until iSupCount = iSupMax
            'clear old loop data
            sBody = ""
            sCombD = ""
            sCombW = ""
            sEmail = Nz(DLookup("[email]", "tblSUPERVISORS", "[ID] = " & iSupCount), 0) 'get the email address of the supervisor
            
            If sEmail <> 0 Then 'if there is an email available for this sup
                With rs
                    .MoveFirst
                    Do Until .EOF
                        If (![tblSUPERVISORS.ID] = iSupCount) And (![emailsenddate] <= Date) Then
                            freq = ![tbltasklist.frequency]
                            combined = ![tbltasklist.combined]
                            
                            If (combined = False) Then
                            'Pick up information about the task
                                taskName = ![tblTASKLIST.tasktitle]
                                lastOccur = ![lastENTRY]
                                sBody = sBody & "        " & lastOccur & "           " & "     ---     " & taskName & vbCr
                            ElseIf (combined = True) And (freq = 1) Then 'for daily tasks
                                taskID = ![tblTASKLIST.ID]
                                qryInfo = combinedEmail(freq, taskID)
                                sCombD = sCombD & qryInfo
                            ElseIf (combined = True) And (dayWeek = dayPM) And (freq <> 1) Then 'for non-daily tasks, send only once a week
                                taskID = ![tblTASKLIST.ID]
                                qryInfo = combinedEmail(freq, taskID)
                                sCombW = sCombW & qryInfo
                            End If
                            
                        End If
                        .MoveNext
                    Loop
                End With
            End If
            
            'creates an email for singular supervisor
            If (sBody <> "") Or (sCombD <> "") Or (sCombW <> "") Then
                With oEmailItem
                    .To = sEmail
                    .Subject = "Missing Tasks and Logs for CL/CR"
                    .Body = "This is an automated alert to notify that the following items were not completed within the designated time frame. " & _
                            vbCr & vbCr & vbCr & _
                            "Regularly Scheduled Tasks" & vbCr & vbCr & _
                            "   Last Date Completed   ---    Task Title" & vbCr & _
                            "__________________________________________" & vbCr & vbCr & _
                            sBody & vbCr & vbCr & vbCr & _
                            sCombD & vbCr & vbCr & vbCr
                    .Send
                End With
            End If
            
            'move to next supervisor
            iSupCount = iSupCount + 1
        
        Loop
            
    
    End If

    
    'Clear objects
        Set oEmailItem = Nothing
        Set oOutlook = Nothing
        rs.Close

End Function


Function combinedEmail(ByVal frequency As Long, ByVal taskID As Long) As String

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
Dim fie As Field

Dim qdfOLD As String
Dim qdfOldExcept As String
Dim qdfNewExcept As String
Dim sQry As String
Dim taskTable As String
Dim sStart As String
Dim sMiddle As String
Dim sEmail As String
Dim missingtask  As String
Dim iString As Long
Dim recordedDate As Date


    sQry = DLookup("[combinedQuery]", "tblTaskList", "[ID] = " & taskID)
    taskTable = DLookup("[tableRel]", "tblTaskList", "[ID] = " & taskID)
    Set db = CurrentDb
    Set qdf = db.QueryDefs(sQry)

    qdfOLD = qdf.SQL 'save old SQL
    sEmail = sEmail & DLookup("[tasktitle]", "tblTaskList", "[ID] = " & taskID) & vbCr
    sStart = "HAVING ((("
    sMiddle = ".timeDate)<Date() And ("

On Error GoTo qdfErr
'this makes a slight adjustment to the display query to use the same one for sending an email about the previous week/month/year
    If frequency = 1 Then
        qdfOldExcept = sStart & taskTable & ".timeDate)=Date())) "
        qdfNewExcept = sStart & taskTable & sMiddle & taskTable & ".timeDate)>=DateAdd('''d''',(-7),Date())))"
        qdf.SQL = Replace(qdf.SQL, qdfOldExcept, qdfNewExcept)
    ElseIf frequency = 7 Then
        qdfOldExcept = "Format(Date(),'''ww''')))"
        qdfNewExcept = "Format(Date(),'''ww''')-1))"
        qdf.SQL = Replace(qdf.SQL, qdfOldExcept, qdfNewExcept)
    ElseIf frequency = 30 Then
        qdfOldExcept = "Format(Date(),'''m''')))"
        qdfNewExcept = "Format(Date(),'''m''')-1))"
        qdf.SQL = Replace(qdf.SQL, qdfOldExcept, qdfNewExcept)
    End If

On Error GoTo effMessage1
Set rs = qdf.OpenRecordset()

'sets task to run every Monday and only send email if tasks were missed
With rs
    If .RecordCount <> 0 Then
        'Checks if a task was missed
        
        .MoveFirst
        Do Until .EOF
            
                
                For Each fie In .Fields
                    If fie.Value = 0 Then 'find missing tasks, which are valued at 0
                        missingtask = fie.Properties("Caption")
                        sEmail = sEmail & missingtask & ", "
                    End If
                Next fie
                
                
               'corrects grammar by removing comma
                iString = Len(sEmail)
                If iString <> 0 Then
                    If Right(sEmail, 2) = ", " Then
                        sEmail = Left(sEmail, iString - 2)
                    End If
                    
                    recordedDate = ![timeDate]
                    sEmail = sEmail & recordedDate & " -- " & sEmail & vbCr & vbCr
                
                End If
        .MoveNext
        Loop
    Else:
    
        missingtask = "          -No PM tasks were completed"
        sEmail = sEmail & missingtask
    End If
    
End With

    combinedEmail = sEmail

Macro1_Exit:
    'Clear objects
    qdf.SQL = qdfOLD
    rs.Close
    qdf.Close
    db.Close
    Exit Function

qdfErr:
    MsgBox "An error occurred when entering data into query. The SQL was not properly replaced with correct string."
    Resume Macro1_Exit
    
effMessage1:
    MsgBox Error$
    Resume Macro1_Exit

End Function

    

