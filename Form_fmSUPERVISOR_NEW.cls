VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSUPERVISOR_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdENTER_Click()
Dim sVal As String
Dim sP As String
Dim sTbl As String
Dim sQry As String
Dim sEm As String
Dim sDom As String
Dim sSup1 As String
Dim sSup2 As String
Dim sUser As String
Dim sPass As String

    sP = ", "
    sTbl = "tblSUPERVISORS"
    sQry = "dupSUPERVISORS"
    sDom = "@ichorsystems.com"

    'check that at least a first name and email have been entered
    If (txtEMAIL.Value <> "") Or (IsNull(txtEMAIL) = False) Then
        If (txtSUP1.Value <> "") Or (IsNull(txtSUP1) = False) Then
            'checks that domain name has been entered for email
            sEm = Trim(txtEMAIL.Value)
            If Right(sEm, Len(sDom)) <> sDom Then
                sEm = """" & sEm & sDom & """"
            Else:
                sEm = """" & sEm & """"
            End If
            
            sSup1 = sqlStr(Me.txtSUP1)
            sSup2 = sqlStr(Me.txtSUP2)
            sUser = sqlStr(Me.txtUSER)
            sPass = sqlStr(Me.txtPASS)
            
            'check for duplicates before adding new record
            On Error GoTo exitEntry:
            sVal = sSup1 & sP & sSup2 & sP & Nz(txtSHIFT, 1) & sP & sEm & sP & sUser & sP & sPass & sP & "True"
            Call dupPartEntry(sQry, Me.txtSUP1, sTbl, sVal) 'check for duplicates
            Call cmdUndo_Click
            
        Else:
            MsgBox "Please enter at least the first name of the supervisor."
            txtSUP1.SetFocus
        End If
    Else:
        MsgBox "Please enter the email of the supervisor."
        txtEMAIL.SetFocus
    End If

errExit:
    Exit Sub

exitEntry:
    MsgBox "There was an error when entering the new supervisor. This record has not been recorded."
    Resume errExit
    
End Sub

Private Sub cmdUndo_Click()

    txtEMAIL = Null
    txtSHIFT = Null
    txtUSER = Null
    txtPASS = Null
    txtSUP2 = Null
    
    With txtSUP1
        .Value = Null
        .SetFocus
    End With
    
End Sub
