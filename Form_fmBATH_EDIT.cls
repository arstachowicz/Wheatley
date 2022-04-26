VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmBATH_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public bathID As Long
Public sBath As String
Public sP As String

Private Sub List317_DblClick(Cancel As Integer)
    Dim searchID As Long

    searchID = CLng(Nz(List317, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmBATH_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
End Sub

Private Sub tglObso_Click()
    Call tglCapt(Me.tglObso, 2)
End Sub

Private Sub tglObso_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglRD_Click()

    Call tglCapt(Me.tglRD, 1)

End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbASSEM_NotInList(NewData As String, Response As Integer)
    Call notListed(Me, NewData, Response, 12)
End Sub

Private Sub cmbELEC1_NotInList(NewData As String, Response As Integer)
    Call notListed(Me, NewData, Response, 3)
End Sub

Private Sub cmbELEC2_NotInList(NewData As String, Response As Integer)
    Call notListed(Me, NewData, Response, 3)
End Sub

Private Sub cmbframe1_NotInList(NewData As String, Response As Integer)
    Call notListed(Me, NewData, Response, 12)
End Sub

Private Sub cmbframe2_NotInList(NewData As String, Response As Integer)
    Call notListed(Me, NewData, Response, 12)
End Sub

Private Sub cmdUndo_Click()

    Call List317_AfterUpdate

End Sub

Private Sub cmdUpdate_Click()
Dim sFile As String
Dim stSQL As String
Dim sFr1 As String
Dim sFr2 As String
Dim sEl1 As String
Dim sEl2 As String
Dim assemID As String

    'in case variables emptied after selected
    sP = ", "

    'checks that a part is highlighted in the list
    If (cmbPARTNUM <> "") And (List317.ItemsSelected.Count <> 0) Then
        bathID = List317.Value
        sFile = sqlStr(Me.txtFILE)
        assemID = sqlStr(Me.cmbASSEM)
        
        sFr1 = sqlStr(Me.cmbFRAME1)
        sFr2 = sqlStr(Me.cmbFRAME2)
        sEl1 = sqlStr(Me.cmbELEC1)
        sEl2 = sqlStr(Me.cmbELEC2)
        
        'update EP table
        stSQL = "Update " & sBath & vbCr & _
                " SET [partNum] = " & cmbPARTNUM & sP & _
                    "[Rev] = " & Nz(cmbRev, 1) & sP & _
                    "[processLayout] = " & sFile & sP & _
                    "[epVolt] = " & Nz(txtVolt, 15) & sP & _
                    "[epTime] = " & Nz(txtTime, 6) & sP & _
                    "[assemblyID] = " & assemID & sP & _
                    "[base1] = " & sFr1 & sP & _
                    "[base2] = " & sFr2 & sP & _
                    "[grndElec1] = " & sEl1 & sP & _
                    "[grndElec2] = " & sEl2 & sP & _
                    "[R&D] = " & tglRD & sP & _
                    "[obsolete] = " & tglObso & sP & _
                    "[pageNum] = " & Nz(txtPage, 1) & vbCr & _
                " WHERE [ID] = " & bathID & ";"
         CurrentDb.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
End Sub

Private Sub clearAll()
        
    cmbPARTNUM = Null
    cmbRev = Null
    tglRD = False
    tglObso = False
    txtFILE = Null
    txtPage = Null
    cmbASSEM = Null
    cmbFRAME1 = Null
    cmbFRAME2 = Null
    cmbELEC1 = Null
    cmbELEC2 = Null
    txtVolt = Null
    txtTime = Null

End Sub

Private Sub List317_AfterUpdate()
Dim db As DAO.Database
Dim rs As DAO.Recordset

Dim bRD As Boolean
Dim bObs As Boolean

    Call clearAll
    bathID = CLng(Nz(List317, 0))
    sBath = "tblEP_BATHE"
    sP = ", "

Set db = CurrentDb
Set rs = db.OpenRecordset(sBath)

With rs
    .MoveFirst
    Do While Not .EOF
        If !ID = bathID Then
            'pull boolean information
                bRD = ![R&D]
                
                bObs = !obsolete
            
            'Pull table information
                cmbPARTNUM = !partNum
                cmbRev = !Rev
                tglRD = bRD
                tglObso = bObs
                txtFILE = Nz(!processlayout)
                txtPage = Nz(!pageNum)
                cmbASSEM = Nz(!assemblyID)
                cmbFRAME1 = Nz(!base1)
                cmbFRAME2 = Nz(!base2)
                cmbELEC1 = Nz(!grndelec1)
                cmbELEC2 = Nz(!grndElec2)
                txtVolt = Nz(!epVolt)
                txtTime = Nz(!epTime)
                Exit Do
        End If
        .MoveNext
    Loop
    .Close
End With

    'change captions of toggle buttons
    Call tglCapt(Me.tglRD, 1)
    Call tglCapt(Me.tglObso, 2)
    
    db.Close
End Sub
