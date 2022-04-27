Attribute VB_Name = "openPDFfile"
Option Compare Database
Option Explicit

Function indPDF0107(ByVal sID As String, ByVal bRev As Boolean) As String
'Determines if a file path is available. If so, sends the full filename as a string
'lID : The autonumber assigned to the talon part number
'bRev : True = loop through other possible revs

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim rsRev As DAO.Recordset
Dim fileName As String
Dim fileFrame As String
Dim sRev As String
Dim sNum As String
Dim sTbl As String
Dim sQry As String
Dim s07 As String
Dim s01 As String
Dim sHyper As String

sQry = "qryPARTNUM_ALL"
s07 = "07 - Manufacturing Tooling\PDF\"
s01 = "01 - Electropolish Fixturing\PDF\"
sHyper = "H:\Engineering\Drawings Overflow\"

Set db = CurrentDb
Set rs = db.OpenRecordset(sQry)


    'make sure a value is available before trying to run pdf search
    If (sID <> "") And (IsNull(sID) = False) Then
            With rs
                .MoveFirst
                Do Until .EOF
                    If ![uniqID] = sID Then
                        'pull information to build file name
                        sTbl = ![tbl]
                        sNum = ![partNumber]
                        sRev = Nz(![Rev], "A")
                        
                        'change path depending on part, 01- or 07-
                        If (sTbl = "tblPART_01") Then
                            fileFrame = sHyper & s01 & sNum
                        ElseIf (sTbl = "tblPART_07") Then
                            fileFrame = sHyper & s07 & sNum
                        End If
                        
                        'checks if a file matches the part number and rev already entered into Wheatley and pulls that data first
                        If (Dir(fileFrame & "_" & sRev & ".pdf") <> "") Then
                            indPDF0107 = fileFrame & "_" & sRev & ".pdf"
                            Exit Do
                        ElseIf (Dir(fileFrame & sRev & ".pdf") <> "") Then
                            indPDF0107 = fileFrame & sRev & ".pdf"
                            Exit Do
                        End If
                        
                        On Error GoTo errBoolean:
                        'if "true" is selected and no previous file is found, run through all possible revs for a possible pdf
                        If bRev = True Then

                            'starts PDF with NO rev attached or underscore
                            fileName = fileFrame & ".pdf"
                            If Dir(fileName) <> "" Then
                                indPDF0107 = fileName
                            Else:
                                'see if there's a pdf without the underscore
                                Set rsRev = db.OpenRecordset("refRev")
                                rsRev.MoveFirst
                                Do Until rsRev.EOF
                                    sRev = rsRev![Rev]
                                    fileName = fileFrame & "_" & sRev & ".pdf" 'remove .pdf tag and add next rev
                        
                                    If Dir(fileName) = "" Then
                                        fileName = fileFrame & sRev & ".pdf" 'try without underscore
                                        If Dir(fileName) <> "" Then
                                            indPDF0107 = fileName
                                        Else:
                                            indPDF0107 = ""
                                        End If
                                        Exit Do
                                    Else:
                                        indPDF0107 = fileName
                                        Exit Do
                                    End If
                                    rsRev.MoveNext
                                Loop
                            End If
                            rsRev.Close
                        Else:
                            fileName = fileFrame & sRev & ".pdf" 'try without underscore
                            If Dir(fileName) <> "" Then
                                indPDF0107 = fileName
                            ElseIf Dir(fileFrame & "_" & sRev & ".pdf") <> "" Then
                                indPDF0107 = fileFrame & "_" & sRev & ".pdf"
                            End If
                        End If
                            
                        Exit Do
                        
                    End If
                .MoveNext
                Loop
                .Close
            End With
    End If


    db.Close
    
err_Exit:
    Exit Function

lookupErr:
    MsgBox "There was an error opening the PDF file."
    Resume err_Exit

errBoolean:
    MsgBox "There was an error when running the boolean code for searching file names that don't fit convention."
    Resume err_Exit
    
End Function


Function indPDF(ByVal tPart As String, ByVal lID As Long, ctrl As Control) As String
'Determines if a file path is available. If so, sends the full filename as a string
'FOR 01 PART NUMBERS ONLY, SENT AS AUTOID

'tPart : Talon part number, full
'lID : The autonumber assigned to the talon part number
'ctrl : name of control that is activated by this code, such as a button that when clicked, shows the PDF

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim sTbl As String
Dim fileName As String
Dim fileFrame As String
Dim lRev As Long
Dim sNum As String
Dim sRev As String

'change file frame and path if an 01- or 07- number
If (tPart = "01") Then
    sTbl = "tblPART_01"
    fileFrame = "H:\Engineering\Drawings Overflow\01 - Electropolish Fixturing\PDF\"
ElseIf (tPart = "07") Then
    sTbl = "tblPART_07"
    fileFrame = "H:\Engineering\Drawings Overflow\07 - Manufacturing Tooling\PDF\"
End If

    Set db = CurrentDb
    Set rs = db.OpenRecordset(sTbl)
    
    'make sure a value is available before trying to run pdf search
    If (lID <> 0) And (IsNull(lID) = False) Then
        If (tPart = "01") Or (tPart = "07") Then
            With rs
                .MoveFirst
                Do Until .EOF
                    If ![autoID] = lID Then
                        'pull information to build file name
                        sNum = ![partNumber]
                        lRev = ![Rev]
                        sRev = DLookup("[rev]", "refRev", "[ID] = " & lRev)
                        fileName = sNum & "_" & sRev & ".pdf"
                        fileName = fileFrame & fileName
                        
                        'see if file exists, if it does, enable controls and assign hyperlink to string
                        If Dir(fileName) <> "" Then
                            indPDF = fileName
                            ctrl.Enabled = True
                            ctrl.Visible = True
                        End If
                    Exit Do
                    End If
                .MoveNext
                Loop
                .Close
            End With
        End If
    End If

db.Close

err_Exit:
    Exit Function

lookupErr:
    MsgBox "There was an error opening the PDF file."
    Resume err_Exit

End Function

Function pdfOpen(ByVal sFile As String, ByVal lPage As Long)
' Author    : Daniel Pineault, CARDA Consultants Inc.
' Website   : http://www.cardaconsultants.com
' Purpose   : Open a PDF on a specific page
' Reference : http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/pdf_open_parameters.pdf
'
' Input Variables:
' ~~~~~~~~~~~~~~~~
' sFile     : Fully qualified pathe and filename, including extension, of the PDF to
'             open.
' page      : Page number to open the document at
' zoom      : Numerical value representing a zoom factor; 100=100%, 65=65%, ...
' pagemode  : Displays bookmarks or thumbnails; bookmarks, thumbs, none
' scrollbar : Turns scrollbars on or off; 1=Turn on, 0=Turn off
' toolbar   : Turns the toolbar on or off; 1=Turn on, 0=Turn off
' statusbar : Turns the status bar on or off; 1=Turn on, 0=Turn off
' messages  : Turns the document message bar on or off; 1=Turn on, 0=Turn off
' navpanes  : Turns the navigation panes and tabs on or off; 1=Turn on, 0=Turn off
'
' Usage:
' ~~~~~~
' OpenPDF "C:\Users\Daniel\Documents\Test\Test.pdf",3,,"none",1,0,0,0,0

    On Error GoTo Error_Handler
    Dim WSHShell        As Object
    Dim sAcrobatPath    As String
    Dim sParameters     As String
    Dim sCmd            As String
    
    'Determine the path to Acrobat Reader
    Set WSHShell = CreateObject("Wscript.Shell")
    'sAcrobatPath = WSHShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\AcroRd32.exe\")
    sAcrobatPath = WSHShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Acrobat.exe\")
   
    'Build our parameters, remove scroll bar, navigation planes, tool bar, and jump to page with info needed (lPage)
    If Not IsMissing(lPage) Then
        sParameters = "page=" & lPage & "&pagemode=none" & "&scrollbar=1" & _
                      "&toolbar=0" & "&navpanes=0"
    End If
    
    'Open our PDF
    If Len(sParameters) = 0 Then 'No parameters
        Shell sAcrobatPath & " " & Chr(34) & sFile & Chr(34), vbNormalFocus
    Else 'Parameters
        'Open the file using Shell (no prompt)
        sCmd = sAcrobatPath & " /A " & Chr(34) & sParameters & Chr(34) & " " & Chr(34) & sFile & Chr(34)
        Shell sCmd, vbNormalFocus
    End If
 
Error_Handler_Exit:
    On Error Resume Next
    Set WSHShell = Nothing
    Exit Function
 
Error_Handler:
    MsgBox "The following error has occurred." & vbCrLf & vbCrLf & _
           "Error Number: " & Err.Number & vbCrLf & _
           "Error Source: OpenPDF" & vbCrLf & _
           "Error Description: " & Err.Description, _
           vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
    
End Function

Function pdfPathCK(ByVal pdfFile As String) As String
Dim lCounter As Long

    'checks if user entered "pdf" into the file field and removes this before submitting
    If Right(pdfFile, 3) = "pdf" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 3)
    ElseIf Right(pdfFile, 4) = ".pdf" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 4)
    End If
    
    pdfPathCK = pdfFile
End Function
