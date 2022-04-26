VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPRESS_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public tbl As String
Public pressID As Long

Private Sub ckObs_Click()
    Call tglCapt(Me.ckObs, 2)
End Sub

Private Sub ckObs_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckRD_Click()
    Call tglCapt(Me.ckRD, 1)
End Sub

Private Sub ckRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbBOTTOM_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 15)
End Sub

Private Sub cmbRev_AfterUpdate()
    
    If (IsNull(cmbRev) = False) And (IsNull(cmbTALON) = False) Then
        Call revPop("dupPress", tbl, Me.cmbTALON, Me.cmbRev, Me.txtFILE)
    End If

End Sub

Private Sub cmbTALON_AfterUpdate()
    Call cmbRev_AfterUpdate 'checks if info has been entered previously
End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)
    Call notListedTal(Me, NewData, Response)
End Sub

Private Sub cmbTOOL1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOOL2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOOL3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 16, 10)
End Sub

Private Sub cmbTOP_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 15, 9)
End Sub

Private Sub cmdEXIT_Click()
Dim formName As String
    formName = "fmPRESS_NEW"
    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
End Sub

Private Sub Command317_Click()
    Dim sP As String
    Dim sN As String
    
    'part number and PDF info
    Dim pNum As Long
    Dim revN As Long
    Dim pdfPage As Long
    Dim pdfFile As String
    
    'top and bottom
    Dim lTop As String
    Dim lBottom As String
    
    'staking tools
    Dim lTOOL1 As String
    Dim lTOOL2 As String
    Dim lTOOL3 As String
    
    Dim lCounter As Long 'for adjusting
    Dim sVal As String
    
    sP = ", "
    sN = "NULL"
    
    pNum = CLng(Nz(cmbTALON))
    revN = CLng(Nz(cmbRev.Value, 1))
    
    pdfFile = sqlStr(txtFILE)
    pdfPage = CLng(Nz(txtPage, 1))
    
    'checks if user entered "pdf" into the file field and removes this before submitting
    If Right(pdfFile, 4) = "pdf'" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 4)
    ElseIf Right(pdfFile, 5) = ".pdf'" Then
        lCounter = Len(pdfFile)
        pdfFile = Left(pdfFile, lCounter - 5)
    End If
    
    lTop = sqlStr(cmbTOP)
    lBottom = sqlStr(cmbBOTTOM)
    lTOOL1 = sqlStr(cmbTOOL1)
    lTOOL2 = sqlStr(cmbTOOL2)
    lTOOL3 = sqlStr(cmbTOOL3)


    'enter all info into the press table
    sVal = pNum & sP & revN & sP & lTop & sP & lBottom & sP & lTOOL1 & sP & lTOOL2 & sP & lTOOL3 & sP & _
            sN & sP & sN & sP & pdfFile & sP & pdfPage & sP & sN & sP & False & ", #" & Date & "#, " & ckRD
    Call sqlEntryBuilder(tbl, sVal, True)
    
    
    MsgBox "Successfully added!"
    Call Command318_Click
    
End Sub

Private Sub Command318_Click()

'clears all information in textboxes
    If Me.Name = "fmPress_New" Then
        
        With cmbTALON
            .Value = Null
            .SetFocus
        End With
        
        cmbRev = Null
        cmbTOP = Null
        cmbBOTTOM = Null
        cmbTOOL1 = Null
        cmbTOOL2 = Null
        cmbTOOL3 = Null
        txtFILE = Null
        txtPage = Null
        
        ckRD = False
        Call tglCapt(Me.ckRD, 1)
        
        ckObs = False
        Call tglCapt(Me.ckObs, 2)
        
    End If

End Sub

Private Sub Form_Load()

tbl = "tblPress"

    If Not IsNull(Me.OpenArgs) Then 'checks for passed conditions from other forms
        pressID = CLng(Me.OpenArgs)
        Call condFormOpenEP(pressID)
        cmdEXIT.Visible = True
    Else:
        Call Command318_Click
        cmdEXIT.Visible = False
    End If

End Sub

Public Sub condFormOpenEP(pressID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset

Dim sPress As String
Dim bRD As Boolean
Dim bObso As Boolean
Dim i As Long
Dim sCol As String

    sPress = "tblPRESS"

Set db = CurrentDb
Set rs = db.OpenRecordset(sPress)

If (pressID <> 0) Then

    cmbTALON.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = pressID Then
                'pull boolean information
                    bRD = ![R&D]
                    bObso = ![obsolete]
                
                'Pull table information
                    cmbTALON.Value = !partNum
                    cmbTOP.Value = Nz(!partTop)
                    cmbBOTTOM.Value = Nz(!partBot)

                'pull staking tool info
                    For i = 1 To 3
                        sCol = Nz(.Fields("partTool" & i))
                        Me.Controls("cmbTOOL" & i).Value = sCol
                    Next
                    
                'adjust toggle buttons
                    ckRD = bRD
                    Call tglCapt(Me.ckRD, 1)
                    
                'file and pages
                    txtFILE = Nz(!fileName)
                    txtPage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    cmbRev.SetFocus
Else:
    cmbTALON.Enabled = False
End If

    db.Close

End Sub


