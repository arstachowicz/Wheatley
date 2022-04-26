VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmBATH_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim sTbl As String
Dim bathID As Long

Private Sub ckRD_Click()
On Error GoTo Macro11_Err

    With ckRD
        If (.Value = True) Then
            .Caption = "R && D"
        Else
            .Caption = "Not R && D"
        End If
    End With


Macro11_Exit:
    Exit Sub

Macro11_Err:
    MsgBox Error$
    Resume Macro11_Exit
End Sub

Private Sub ckRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub


Private Sub cmbPARTNUM_AfterUpdate()
    Call cmbRev_AfterUpdate
End Sub

Private Sub cmbPARTNUM_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As Recordset
Dim strTmp As String
Dim queryName As String

queryName = "dupPARTNUM"
Set db = CurrentDb
Set rs = db.OpenRecordset(queryName)

    'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new part number?"
    
If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then

    'Append the NewData as a record in the Categories table.
    strTmp = "INSERT INTO tblpartnum (partNum) " & _
                "VALUES ('" & NewData & "');"

    'if already in the system, send an alert and don't save
    With rs
        If .RecordCount <> 0 Then
            DoCmd.RunCommand acCmdUndo
            MsgBox "This is a duplicate part number."
            .Close
            Exit Sub
        End If
    End With
                
    DBEngine(0)(0).Execute strTmp, dbFailOnError

    'Notify Access about the new record, so it requeries the combo.
    Response = acDataErrAdded
Else:
    Response = acDataErrContinue
    
End If

rs.Close
db.Close

End Sub

Private Sub cmbRev_AfterUpdate()
    If (IsNull(cmbRev) = False) And (IsNull(cmbPARTNUM) = False) Then
        Call revPop("dupBATH", "tblEP_BATHE", Me.cmbPARTNUM, Me.cmbRev, Me.txtFILE)
        cmbRev.SetFocus
    End If
    
End Sub


Private Sub cmdENTER_Click()
    'tables
    Dim sSQL As String
    Dim tbl As String
    
    'electrodes
    Dim elec1 As String 'electrodes
    Dim elec2 As String 'electrodes
    
    'frames
    Dim lFrame1 As String
    Dim lFrame2 As String
    
    Dim lVolt As Double
    Dim lPol As Double
    
    Dim pNum As Long
    Dim revN As Long
    Dim assemID As String
    Dim pdfFile As String
    Dim pdfPage As Long

    Dim sN As String
    Dim sP As String
    Dim lCounter As Long
    
    Dim sRD As String

    tbl = "tblEP_BATHE"
    sP = ", "
    sN = "Null"
    pNum = Nz(cmbPARTNUM, 0)
    
    If (IsNull(pNum) = False) And (pNum <> 0) Then

        elec1 = sqlStr(cmbELEC1)
        elec2 = sqlStr(cmbELEC2)
        
        revN = Nz(cmbRev, 1)
        assemID = sqlStr(cmbASSEM)
        pdfFile = sqlStr(txtFILE)
        pdfPage = Nz(txtPage, 1)
      
        lFrame1 = sqlStr(cmbFRAME1)
        lFrame2 = sqlStr(cmbFRAME2)
        
        lVolt = Nz(txtVolt, 15)
        lPol = Nz(txtTime, 6) 'polish time
        
        If (tglRD = True) Then
            sRD = "True"
        Else:
            sRD = "False"
        End If
        
        'PDF entry corrector
        If pdfFile <> sN Then
            'checks if user entered "pdf" into the file field and removes this before submitting
            If Right(pdfFile, 3) = "pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 3)
            ElseIf Right(pdfFile, 4) = ".pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 4)
            End If

        End If
    
        'enter all info into the EP table
        sSQL = pNum & sP & revN & sP & assemID & sP & pdfFile & sP & pdfPage & sP & lFrame1 & sP & lFrame2 & sP & _
                elec1 & sP & elec2 & sP & lVolt & sP & lPol & sP & sRD & sP & "False"
        Call sqlEntryBuilder(tbl, sSQL, True)
        MsgBox "Successfully added!"
        Call cmdUndo_Click
    End If
    
End Sub

Private Sub cmdUndo_Click()
    
    With cmbPARTNUM
        .Value = Null
        .SetFocus
    End With
    
    cmbRev = Null
    
    With tglRD
        .Value = False
        .Caption = "Not R && D"
    End With
    
    txtFILE = Null
    txtPage = Null
    cmbASSEM = Null
    cmbFRAME1 = Null
    cmbFRAME2 = Null
    cmbELEC1 = Null
    cmbELEC2 = Null
    txtVolt = 15
    txtTime = 6

End Sub


Private Sub tglRD_Click()

    Call tglCapt(Me.tglRD, 1)

End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbELEC1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9)
End Sub

Private Sub cmbELEC2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9)
End Sub

Private Sub cmbframe1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9)
End Sub

Private Sub cmbframe2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9)
End Sub

Private Sub cmbTALON_AfterUpdate()
       
    Call cmbRev_AfterUpdate 'checks if info has been entered previously
       
End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim strTmp As String
Dim queryName As String

queryName = "dupPARTNUM"
Set db = CurrentDb
Set rs = db.OpenRecordset(queryName)

    'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new part number?"
    
If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then

    'Append the NewData as a record in the Categories table.
    strTmp = "INSERT INTO tblpartnum (partNum) " & _
                "VALUES ('" & NewData & "');"

    'if already in the system, send an alert and don't save
    With rs
        If .RecordCount <> 0 Then
            DoCmd.RunCommand acCmdUndo
            MsgBox "This is a duplicate part number."
            .Close
            Exit Sub
        End If
    End With
                
    DBEngine(0)(0).Execute strTmp, dbFailOnError

    'Notify Access about the new record, so it requeries the combo.
    Response = acDataErrAdded
Else:
    Response = acDataErrContinue
    
End If
    
  rs.Close
  db.Close
  
End Sub

Private Sub cmdEXIT_Click()
Dim formName As String
    formName = "fmBATH_NEW"
    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
End Sub

Private Sub Form_Load()
sTbl = "tblEP_BATHE"

    If Not IsNull(Me.OpenArgs) Then 'checks for passed conditions from other forms
        bathID = CLng(Me.OpenArgs)
        cmdEXIT.Visible = True
        Call condFormOpenEP(bathID)
    Else:
        txtVolt = 15
        txtTime = 6
        
        cmdEXIT.Visible = False
        
        tglRD.Value = False
        Call tglCapt(Me.tglRD, 1)
        
        cmbPARTNUM.SetFocus
    End If
    
    
End Sub

Public Sub condFormOpenEP(bathID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset

Dim sBath As String
Dim i As Long
Dim sCol As String

    sBath = "tblEP_BATHE"

Set db = CurrentDb
Set rs = db.OpenRecordset(sBath)

If (bathID <> 0) Then

    cmbPARTNUM.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = bathID Then
                
                'Pull table information
                    cmbPARTNUM.Value = !partNum

                'pull ELECTRODE info
                    For i = 1 To 2
                        sCol = Nz(.Fields("grndElec" & i))
                        Me.Controls("cmbELEC" & i).Value = sCol
                    Next
                
                'pull FRAME info
                    For i = 1 To 2
                        sCol = Nz(.Fields("base" & i))
                        Me.Controls("cmbFRAME" & i).Value = sCol
                    Next
                    
                'file and pages
                    txtFILE = Nz(!processlayout)
                    txtPage = Nz(!pageNum)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    cmbRev.SetFocus
Else:
    cmbPARTNUM.Enabled = False
End If

    db.Close

End Sub

