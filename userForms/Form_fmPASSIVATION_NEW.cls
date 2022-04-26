VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPASSIVATION_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public tbl As String

Private Sub ckRD_Click()
    Call tglCapt(Me.ckRD, 1)
End Sub

Private Sub ckRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbFixture_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 8)
End Sub

Private Sub cmbflange1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmbflange2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmbflange3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 9, 7)
End Sub
Private Sub cmbRev_AfterUpdate()
    
    If (IsNull(cmbRev) = False) And (IsNull(cmbTALON) = False) Then
        Call revPop("dupPASSIVATION", tbl, Me.cmbTALON, Me.cmbRev, Me.txtFILE)
    End If
    
End Sub

Private Sub cmbTALON_AfterUpdate()
    tbl = "tblPASSIVATE"
    If (wrongFie(Me.ActiveControl, "07", "01") = False) Then
        Call cmbRev_AfterUpdate 'checks if info has been entered previously
    End If
    
End Sub

Private Sub cmdUndo_Click()
    'clears all information in textboxes
        With cmbTALON
            .Value = Null
            .SetFocus
        End With
        
        cmbRev = Null
        
        cmbFixture = Null
        cmbFlange1 = Null
        cmbFLANGE2 = Null
        cmbFLANGE3 = Null
        
        txtFILE = Null
        txtPage = Null
        txtNotes = Null
        ckRD = False
        Call tglCapt(Me.ckRD, 1)

        
End Sub

Private Sub cmdENTER_Click()

    Dim ctrl As Control
    
    'fixture and manifold
    Dim sFixt As String
    Dim sMani1 As String
    Dim sMani2 As String
    Dim sMani3 As String
    Dim sNotes As String
    
    'part number
    Dim sPart As String
    Dim sRev As String
    Dim sRD As String
    
    'PDF info
    Dim pdfPage As String
    Dim pdfFile As String
    
    Dim sQry As String
    Dim sValues As String
    Dim sP As String
    Dim sN As String
    
    Dim s07 As String
    
    sQry = "dupPASSIVATION"
    sP = ", "
    sN = "Null"
    Set ctrl = Me.Controls!cmbTALON
 
   
    sPart = Nz(cmbTALON, sN)
    
    If (sPart <> sN) Then
        sRev = Nz(cmbRev, 1)
        
        'checks if user entered "pdf" into the file field and removes this before submitting
        pdfFile = sqlStr(txtFILE)
        pdfFile = pdfPathCK(pdfFile)
        pdfPage = CStr(Nz(txtPage, 1))
        
        sFixt = sqlStr(cmbFixture)
        sMani1 = sqlStr(cmbFlange1)
        sMani2 = sqlStr(cmbFLANGE2)
        sMani3 = sqlStr(cmbFLANGE3)
        sNotes = sqlStr(txtNotes)
        
        'parse R&D button
        If ckRD = True Then
            sRD = "True"
        Else:
            sRD = "False"
        End If
    
        sValues = sPart & sP & sRev & sP & sFixt & sP & sMani1 & sP & sMani2 & sP & sMani3 & sP & pdfFile & sP & pdfPage & sP & sNotes & sP & "False" & sP & sRD
        
        'enter all info into the EP table
        Call dupPartEntry(sQry, ctrl, tbl, sValues)
        Call cmdUndo_Click
        
    End If
    
End Sub

Private Sub Form_Load()
    cmbTALON.SetFocus
    
End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)

    Call notListedTal(Me, NewData, Response)
    
End Sub

