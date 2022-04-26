VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPART_INFO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim sPart As String
Dim sID As String
Dim sTblPart As String
Dim sN As String

Private Sub cmdCLOSE_Click()
    DoCmd.Close
End Sub

Private Sub cmdUpdate_Click()
Dim db As DAO.Database
Dim sP As String
Dim sNotes As String
Dim stSQL As String
Dim i As Long
Dim nID As String

    Set db = CurrentDb
    sP = ", "
    nID = ""
    sNotes = sqlStr(lblNOTE)
    
    'remove letters and include only numbers in sID
    For i = 1 To Len(sID)
        If IsNumeric(Mid(sID, i, 1)) Then
            nID = nID & Mid(sID, i, 1)
        End If
    Next i

    'only allow updates of 'notes' and 'status' columns
    
    If (sTblPart <> "") And (sTblPart <> sN) Then
        'update EP table
        stSQL = "Update " & sTblPart & vbCr & _
                " SET [location] = " & Nz(lblLOC.Value, "Null") & sP & _
                     "[notes] = " & sNotes & vbCr & _
                " WHERE [autoID] = " & nID & ";"
         db.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
    db.Close
    
End Sub

Private Sub Form_Load()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qry As String
Dim sHyper As String
Dim sRev As String


qry = "qryPARTNUM_ALL"
sN = "n/a"
listLinked.RowSourceType = "Value List"
listLinked.RowSource = sN


Set db = CurrentDb
Set qdf = db.QueryDefs(qry)
Set rs = qdf.OpenRecordset

    If Len(Me.OpenArgs) > 0 Then
       sID = [Forms]![fmPART_INFO].OpenArgs
       
       'search all query for matching uniqID
       With rs
       
            If (.RecordCount <> 0) Then
                .MoveFirst
                Do Until .EOF
                    If (!uniqID = sID) Then
                        
                        'pull some values and store as string
                        sPart = Nz(!partNumber, sN)
                        sTblPart = Nz(!tbl)
                        sRev = Nz(!Rev, "A")
                        
                        'populate fields based on record
                        Call linkedUpdate
                        lblPART.Caption = sPart
                        lblUSE.Caption = Nz(!partType, sN)
                        lblLOC.Value = Nz(!Location, 12)
                        lblNOTE.Value = Nz(!Notes, sN)
                        sTblPart = Nz(!tbl, sN)

                        'pull up PDF in browser control
                        sHyper = indPDF0107(sID, True)
                        
                        'pull pdf and display in webcontrol
                        If (sHyper <> "") And (IsNull(sHyper) = False) Then
                            pdfViewer.ControlSource = "=" & """" & sHyper & """"
                        Else:
                            pdfViewer.ControlSource = ""
                        End If
                        
                        Exit Do
                    End If
                    .MoveNext
                Loop
            End If
            .Close
       End With
        
       
    End If
    
    qdf.Close
    db.Close
    
End Sub

Private Sub linkedUpdate()
'searches for any linked parts using the qryLinked
Dim db2 As DAO.Database
Dim qdfLink As DAO.QueryDef
Dim rsLink As DAO.Recordset
Dim sQry As String
Dim sAll As String

sQry = "qryLINKED"
sAll = "qryPARTNUM_ALL"
Set db2 = CurrentDb
Set qdfLink = db2.QueryDefs(sQry)

    qdfLink.SQL = "SELECT " & sAll & ".uniqID, " & sAll & ".partNumber, " & sAll & ".linkedID " & vbCr & _
        "From " & sAll & vbCr & _
        " WHERE (((" & sAll & ".uniqID) = """ & sID & """) And ((" & sAll & ".partNumber) <> """ & sPart & """)) Or (((" & sAll & ".partNumber) <> """ & sPart & """) And ((" & sAll & ".linkedID) = """ & sID & """)) " & vbCr & _
        "ORDER BY " & sAll & ".partNumber;"
                
Set rsLink = qdfLink.OpenRecordset

'checks if anything is entered, if so, update the linked listbox. Displays "n/a" if nothing is available.
With listLinked
    If rsLink.RecordCount > 0 Then
        .RowSourceType = "Table/Query"
        .RowSource = sQry
        .ColumnCount = 2
        .ColumnWidths = "0;1"
        .Enabled = True
    Else:
        .RowSourceType = "Value List"
        .RowSource = "n/a"
        .ColumnCount = 1
        .ColumnWidths = "1"
        .Enabled = False
    End If
End With

'empty
    rsLink.Close
    qdfLink.Close
    db2.Close

End Sub
