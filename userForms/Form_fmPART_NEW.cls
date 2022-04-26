VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPART_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdUndo_Click()
    
    Call clearFie
    
End Sub

Private Sub tglOb_Click()
    Call tglCapt(Me.ActiveControl, 2)
End Sub

Private Sub tglOb_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglRD_Click()
    Call tglCapt(Me.ActiveControl, 1)
End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbUse_AfterUpdate()

    Call subCat(Me.Controls!cmbUse, Me.Controls!cbSub, Me.Controls!cmbLocation)
    
End Sub

Private Sub Command46_Click()
On Error GoTo Macro1_Err

Dim ctrl As Control
Dim sTbl As String
Dim sQry As String
Dim s3 As String
Dim sPart As String
Dim sNotes As String
Dim sSub As String
Dim sP As String
Dim sValues As String
Dim sLink As String
Dim lNew156 As Long
Dim lRev As Long
Dim lUse As Long
Dim lLoc As Long
Dim bObs As Boolean
Dim bRnD As Boolean

Set ctrl = Me.Controls!txtPART
sP = ", "

If ckIncomplete("txt*", Me, True, 1) = False Then
    If ckIncomplete("cmb*", Me, True, 2) = False Then
    
    'pull values
        sPart = sqlStr(ctrl)
        
        If (sPart <> "Null") Then
            s3 = Left(sPart, 3)
            If (s3 = "01-") Then
                sTbl = "tblPART_01"
                sQry = "dupPART_01"
            ElseIf (s3 = "07-") Then
                sTbl = "tblPART_07"
                sQry = "dupPART_07"
            ElseIf (s3 = "156") Then
                sTbl = "tblPART_156"
                sQry = "dupPART_156"
            End If
        End If
        
        lRev = cmbRev
        bObs = tglOb
        bRnD = tglRD
        sLink = sqlStr(cbLink)
        sSub = sqlStr(cbSub)
        lUse = cmbUse
        sNotes = sqlStr(nrNotes)
        lLoc = Nz(cmbLocation, 12)
        
    'order of values
        If (s3 = "156") Then 'removes "newNumber" field that's only in 01 and 07
                sValues = sPart & sP & lRev & sP & bObs & sP & bRnD & sP & lUse & sP & sLink & sP & Date & sP & sNotes & sP & lLoc & sP & sSub
            Else:
                sValues = sPart & sP & lNew156 & sP & lRev & sP & bObs & sP & bRnD & sP & lUse & sP & Date & sP & sNotes & sP & sLink & sP & lLoc & sP & sSub
        End If
        
        Call dupPartEntry(sQry, ctrl, sTbl, sValues, Empty, Empty) 'check for duplicates
        cbLink.Requery
        Call clearFie
        ctrl.SetFocus
    End If
End If

    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
End Sub


Sub clearFie()

    With txtPART
        .Value = Null
        .SetFocus
    End With
    
    With cbSub
        .Value = Null
        .Enabled = False
    End With
    
    With tglOb
        .Value = False
        Call tglCapt(Me.tglOb, 2)
    End With
            
    With tglRD
        .Value = False
        Call tglCapt(Me.tglRD, 1)
    End With
    
    cmbRev = Null
    cmbUse = Null
    cmbLocation = Null
    cbLink = Null
    nrNotes = Null
    new156Num = Null
    new156Num.Enabled = False
        
End Sub

Private Sub Form_Load()
    Call clearFie

End Sub

Private Sub txtPart_AfterUpdate()
Dim sText As String

'activates "new number" field (only available for old 01- and 07- numbers) if first three numbers are NOT 156
If (IsNull(txtPART) = False) Then
    If (Left(Me.ActiveControl, 3) = "156") Then
        new156Num.Enabled = False
    Else:
        new156Num.Enabled = True
    End If
End If

End Sub
