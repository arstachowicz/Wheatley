VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPART_07_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim lID As Long

Private Sub tglOb_Click()
    Call tglCapt(Me.tglOb, 2)
End Sub

Private Sub tglOb_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglRD_Click()
    Call tglCapt(Me.tglRD, 1)
End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmdENTER_Click()
Dim db As DAO.Database
Dim sN As String
Dim sP As String
Dim sNewNum As String
Dim tbl As String
Dim stSQL As String
Dim sRD As String
Dim sOB As String
Dim sNotes As String
Dim sLoc As String
Dim sLink As String
Dim sUse As String

    Set db = CurrentDb
    sP = ", "
    tbl = "tblPART_07"
    
    sNotes = sqlStr(txtNote)
    sLoc = sqlStr(cmbLocation)
    sLink = sqlStr(cmbLink)
    sUse = sqlStr(cmbUse)
    sNewNum = sqlStr(txtNewNum) 'new numbering system (ie 156-#####-###)
    
    'assign boolean values
    If (tglRD = True) Then
        sRD = "True"
    Else:
        sRD = "False"
    End If
    
    If (tglOb = True) Then
        sOB = "True"
    Else:
        sOB = "False"
    End If
    
    'update EP table
    stSQL = "Update " & tbl & vbCr & _
            " SET [Rev] = " & Nz(cmbRev, 1) & sP & _
                "[newNumber] = " & sNewNum & sP & _
                "[obsolete] = " & sOB & sP & _
                "[R&D] = " & sRD & sP & _
                "[partUseage] = " & sUse & sP & _
                "[linkedID] = " & sLink & sP & _
                "[notes] = " & sNotes & sP & _
                "[location] = " & sLoc & vbCr & _
            " WHERE [autoID] = " & lID & ";"
        db.Execute stSQL, dbFailOnError
        MsgBox "Successfully updated!"
    
    db.Close
        
End Sub

Private Sub cmdUndo_Click()

    'undo any changes made, don't save
    Call List595_AfterUpdate
    
End Sub

Private Sub Form_Load()

    cmbRev = Null
    cmbUse = Null
    cmbLink = Null
    cmbLocation = Null
    txtNote = Null
    
    With tglRD
        .Value = False
        Call tglCapt(Me.tglRD, 1)
    End With
    
    With tglOb
        .Value = False
        Call tglCapt(Me.tglOb, 2)
    End With
    
End Sub

Private Sub List595_AfterUpdate()
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim i As Long
Dim tbl As String
Dim sP As String
Dim sN As String

    Call Form_Load
    lID = CLng(Nz(List595, 0))
    tbl = "tblPART_07"

Set db = CurrentDb
Set rs = db.OpenRecordset(tbl)

    With rs
        .MoveFirst
        Do While Not .EOF
            If !autoID = lID Then
                'pull boolean information
                    tglRD = ![R&D]
                    tglOb = !obsolete
                    Call tglCapt(Me.tglOb, 2)
                    Call tglCapt(Me.tglRD, 1)
                    
                'Pull table information
                    cmbRev = !Rev
                    cmbUse = !useage
                    cmbLink = !linkedID
                    cmbLocation = !Location
                    txtNewNum = !newNumber
                    txtNote = !Notes
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    db.Close
    
End Sub
