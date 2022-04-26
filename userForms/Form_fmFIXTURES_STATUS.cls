VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmFIXTURES_STATUS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Dim partEP As String
Dim lAlt As Long
Dim sAlt As String

Private Sub cmdAlt_Click()
    MsgBox "An alternative number for this is " & sAlt & ". The alternative part may be engraved as such."
End Sub

Private Function altLink(ByVal altID As Long, ctrl As Control, ByVal sFixt As String) As String
Dim db As DAO.Database
Dim qry As DAO.QueryDef
Dim rs As DAO.Recordset

    Set db = CurrentDb
    Set qry = db.QueryDefs("qryLINKED")
    
    qry.SQL = "SELECT tblPART_01.autoID, tblPART_01.partNumber, tblPART_01.linkedID " & vbCr & _
                "From tblPART_01 " & vbCr & "WHERE (((tblPART_01.autoID)=" & altID & ")) OR (((tblPART_01.linkedID)=" & altID & "));"
    Set rs = qry.OpenRecordset
    
    With rs
        If .RecordCount > 1 Then
            .MoveFirst
            
            Do Until .EOF
                altLink = ![partNumber]
                If (altLink <> sFixt) Then
                    ctrl.Visible = True
                    ctrl.Enabled = True
                    Exit Do
                Else:
                    ctrl.Visible = False
                    ctrl.Enabled = False
                End If
                .MoveNext
            Loop
        End If
        .Close
    End With
    
    qry.Close
    db.Close
   
End Function

Private Sub cmdPic_Click()
    fileName = indPDF("01", lCap, Me.cmdPicCap)
    Call pdfOpen(fileName, 1)
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    Call clearFields
    txtPART = Null
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "Fixture Locations"
    Call cmdUndo_Click

End Sub

Private Sub lblWHERE_USED_Click()

    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog

End Sub

Private Sub lblWHERE_USED_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub txtPart_AfterUpdate()
    Dim db As DAO.Database
    Dim qdf As DAO.QueryDef
    Dim rst As DAO.Recordset
    Dim ctrl As Control
    
    Dim lID As Long
    Dim lLoc As Long
    Dim lAlt As Long
    Dim sP As String
    Dim sN As String
    Dim sPart As String
    
    'names of queries for SQL
    Dim tbl As String
    Dim sQry As String
    Dim QRY1 As String
    
'Clear old data
    sPart = Trim(txtPART)
    QRY1 = "qryPART_LOCATION" 'isolates part number and its location after running dlookup

    Set db = CurrentDb
    Set qdf = db.QueryDefs(QRY1)
    
    
If (IsNull(sPart) = False) And (sPart <> "") Then

    On Error GoTo absentTalonPartNum
    lID = DLookup("[autoID]", "tblPART_01", "[partNumber] = '" & sPart & "'")
    
    'build query text
        sP = ", "
        sN = "n/a"
        tbl = "tblPART_01"
        sQry = "SELECT " & tbl & ".autoID" & sP & tbl & ".rev" & sP & tbl & ".location" & sP & tbl & ".linkedID " & vbCr & _
                "FROM " & tbl & vbCr & _
                "WHERE (((" & tbl & ".autoID) = " & lID & ")) " & vbCr & _
                "ORDER BY " & tbl & ".rev DESC;"

        qdf.SQL = sQry

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("This part number has not been entered.")
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            lLoc = Nz(![Location], sN)
            cmbLocation = lLoc

            On Error GoTo linkErr:
            'checks if for a linked part number, activates button and assigns variable
                If (![linkedID] <> "") Or (IsNull(![linkedID]) = False) Then
                    cmdAlt.Enabled = True
                    lAlt = ![linkedID]
                    Set ctrl = Me.cmdAlt
                    sAlt = altLink(lAlt, ctrl, sPart)
                Else:
                    cmdAlt.Enabled = False
                End If
                
                
            On Error GoTo pdfErr:
            'checks if a pdf file is available for viewing picture of whatever part
                If (indPDF("01", lAlt, Me.cmdPic) <> "") Then
                    cmdPic.Enabled = True
                    cmdPic.Visible = True
                End If
        End If
        .Close
    End With

    qdf.Close
    db.Close
    
End If

    
macro_exit:
    Exit Sub
    
absentTalonPartNum:
    MsgBox "This part number is not in the system."
    Resume macro_exit
    
linkErr:
    MsgBox "There was an error when searching for linked parts."
    Resume pdfErr
    
pdfErr:
    MsgBox "There was an error pulling PDF of individual fixtures."
    
End Sub

Private Sub clearFields()

'clear field
    cmbLocation = Null

    With txtPART
        .Value = Null
        .SetFocus
    End With
    
    With cmdPic
        .Enabled = False
        .Visible = True
    End With
    
    With cmdAlt
        .Enabled = False
        .Visible = True
    End With
    
End Sub
