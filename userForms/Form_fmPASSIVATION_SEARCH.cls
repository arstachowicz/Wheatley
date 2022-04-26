VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPASSIVATION_SEARCH"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public lFrame As String
Public lFlange As String
Public sFileName As String
Public lPage As Long

Private Sub cmdPicFLAN_Click()
    sFileName = indPDF0107(lFlange, False)
    Call pdfOpen(sFileName, 1)
End Sub

Private Sub cmdPicFRAME_Click()
    sFileName = indPDF0107(lFrame, False)
    Call pdfOpen(sFileName, 1)
End Sub

Private Sub cmdSETUP_Click()

    Call pdfOpen(sFileName, lPage)
    
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    Call clearFields
    txtPART = Null
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "Passivation Fixtures"
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
    Dim sSel As String
    Dim sPart As String
    Dim tbl As String
    Dim qry As String
    Dim sN As String
    Dim sP As String
    Dim sL As String
    Dim sAll As String
    Dim sFrame As String
    Dim sFlange As String

    Set db = CurrentDb
    qry = "qryPASSIVATION"
    sAll = "qryPARTNUM_ALL"
    tbl = "tblPASSIVATE"
    sN = "n/a"
    sP = ", "
    sL = " LEFT JOIN "
    
'Clear old data
    Call clearFields
    sPart = sqlStr(txtPART)
    
If (IsNull(sPart) = False) And (sPart <> "Null") Then

    On Error GoTo absentTalonPartNum
    'build SQL
    Set qdf = db.QueryDefs(qry)

    sSel = "SELECT TOP 1 " & tbl & ".partNum, tblPARTNUM.partNum" & sP & sAll & ".partNumber AS fixStr" & sP & sAll & "_1.partNumber AS maniStr" & sP & tbl & ".fileName" & sP & tbl & ".pageNum" & sP & tbl & ".fixtureNum" & sP & tbl & ".maniNum " & vbCr & _
           "FROM (((" & tbl & sL & "refREV ON " & tbl & ".rev = refREV.ID)" & sL & sAll & " ON " & tbl & ".fixtureNum = " & sAll & ".uniqID)" & _
                    sL & sAll & " AS " & sAll & "_1 ON " & tbl & ".maniNum = " & sAll & "_1.uniqID) INNER JOIN tblPARTNUM ON " & tbl & ".partNum = tblPARTNUM.ID " & vbCr & _
           "WHERE (((tblPARTNUM.partNum)=" & sPart & ") AND ((" & tbl & ".obsolete)=False) AND ((" & tbl & ".[r&d])=False)) " & vbCr & _
           "ORDER BY refREV.rev DESC;"
    
    qdf.SQL = sSel

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            cmdSETUP.Enabled = False
            Call cmdUndo_Click
        Else:
            'Pull data from first record
            .MoveFirst
            
            'pull frame assembly info
            sFrame = Nz(![fixStr], sN)
            lFrame = Nz(![fixtureNum], sN)
            If (lFrame <> sN) Then
                cmdPicFrame.Enabled = True
                cmdPicFrame.Visible = True
            End If
            
            'pull flange info
            sFlange = Nz(![maniStr], sN)
            lFlange = Nz(![maniNum], sN)
            If (lFlange <> sN) Then
                cmdPicFlan.Enabled = True
                cmdPicFlan.Visible = True
            End If
            
            'pull pdf assembly info
            sFileName = Nz(![fileName])
            lPage = Nz(![pageNum], 1)
            
            'Checks if a process layout was made for that part number
                If (sFileName <> "") Then
                    cmdSETUP.Enabled = True
                    sFileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sFileName & ".pdf"
                Else:
                    cmdSETUP.Enabled = False
                End If
            
        End If
        .Close
    End With
    
    'Populate fields based on first entry
        txtFLANGE.Caption = sFlange
        txtFrame.Caption = sFrame
        
    qdf.Close
    db.Close
End If

    
macro_exit:
    Exit Sub
    
absentTalonPartNum:
    MsgBox "This part number is not in the system."
    cmdSETUP.Enabled = False
    Resume macro_exit
    
    
End Sub

Private Sub clearFields()

'clear field
    txtPART.SetFocus
    cmdSETUP.Enabled = False
    txtFrame.Caption = ""
    txtFLANGE.Caption = ""
    
    With cmdPicFrame
        .Enabled = False
        .Visible = False
    End With
    
    With cmdPicFlan
        .Enabled = False
        .Visible = False
    End With
    
End Sub
