VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmBATH_BROWSE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim fileName As String
Dim pageNum As Long
Dim partEP, cap, base As String
Dim lCap, lBase As Long

Private Sub cmdPicBase_Click()
    Call capBasePDF(lBase)
End Sub

Private Sub cmdPicCap_Click()
    Call capBasePDF(lCap)
End Sub

Private Sub capBasePDF(ByVal lID As Long)

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim sTbl As String
Dim fileName As String
Dim lRev As Long
Dim sRev As String

sTbl = "tblPART_01"
Set db = CurrentDb
Set rs = db.OpenRecordset(sTbl)


On Error GoTo macro_exit:
    With rs
        .MoveFirst
        Do Until .EOF
            If ![autoID] = lID Then
                lRev = ![Rev]
                sRev = DLookup("[Rev]", "refRev", "[ID] = " & lRev)
                On Error Resume Next:
                    fileName = "H:\Engineering\Drawings Overflow\01 - Electropolish Fixturing\PDF\" & sFileName & "_" & sRev & ".pdf"
                    fileName = "H:\Engineering\Drawings Overflow\01 - Electropolish Fixturing\PDF\" & sFileName & sRev & ".pdf"
                    cmdPicCap.Enabled = True
                On Error GoTo macro_exit
                Call pdfOpen(fileName, 1)
            Exit Do
            End If
        .MoveNext
        Loop
        .Close
    End With
    
    db.Close
    
macro_exit:
    MsgBox "This part number is not in the system."
    cmdPicCap.Enabled = False
    Exit Sub
  
    
End Sub


Private Sub cmdSETUP_Click()

    Call pdfOpen(fileName, pageNum)
    
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    Call clearFields
    txtPART = Null
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "EP Bath Fixtures"
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
    
    Dim partBATH As String
    Dim lID, lTime, lVolt, lPump, lPage As Long
    Dim qry, sTbl As String 'names of queries for SQL
    Dim sFileName, sAssem As String

    partBATH = Nz(Trim(txtPART.Value))
    sTbl = "tblEP_BATHE"
    
'Clear old data
    Call clearFields
        
Set db = CurrentDb
Set qdf = db.QueryDefs("qryEP_BATHE")

If IsNull(partBATH) = False Then

    On Error GoTo absentTalonPartNum
    lID = DLookup("[ID]", "tblPARTNUM", "[partNum] = '" & partBATH & "'")
    
    'build query text
    qry = "SELECT tblPARTNUM.partNum, " & sTbl & ".assemblyID, tblPART_01.partNumber, " & sTbl & ".pageNum, " & sTbl & ".processRev, " & sTbl & ".epVolt, " & sTbl & ".epTime, " & sTbl & ".processLayout " & vbCr & _
            "FROM (" & sTbl & " LEFT JOIN tblPARTNUM ON " & sTbl & ".partNum = tblPARTNUM.ID) LEFT JOIN tblPART_01 ON " & sTbl & ".assemblyID = tblPART_01.autoID " & vbCr & _
            "ORDER BY " & sTbl & ".processRev DESC;"
    qdf.SQL = qry

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            cmdSETUP.Enabled = False
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            lVolt = Nz(![epVolt])
            lTime = Nz(![epTime])
            sFileName = Nz(![processlayout])
            sAssem = Nz(![partNumber], "n/a")
            lPage = Nz(![pageNum], 1)
            
            'Checks if a process layout was made for that part number
                If sFileName <> "" Then
                    cmdSETUP.Enabled = True
                    fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sFileName & ".pdf"
                    pageNum = lPage
                Else:
                    cmdSETUP.Enabled = False
                End If
            
        End If
        rst.Close
    End With
    
    'Populate fields based on first entry
    txtVolt.Caption = lVolt
    txtTime.Caption = lTime
    txtTIME2.Caption = lTime
    txtRack.Caption = sAssem
    txtPUMP.Caption = 0
    
    
End If

    qdf.Close
    db.Close
    
macro_exit:
    Exit Sub
    
absentTalonPartNum:
    MsgBox "This part number is not in the system."
    cmdSETUP.Enabled = False
    Resume macro_exit
    
End Sub

Private Sub clearFields()

'clear field
    txtTime.Caption = ""
    txtVolt.Caption = ""
    txtTIME2.Caption = ""
    txtPUMP.Caption = ""
    txtRack.Caption = ""
    cmdSETUP.Enabled = False
    txtPART.SetFocus
    
End Sub
