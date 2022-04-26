VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmSUPERVISOR_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public lID As Long

Private Sub cmdENTER_Click()
Dim db As DAO.Database
Dim sSQL As String
Dim sP As String
Dim sP1 As String
Dim tbl As String
Dim sEm As String

    tbl = "tblSUPERVISORS"
    sP = ", "
    sP1 = "', "
    
    If tglEMPLOY = True Then
        sEm = "True"
    Else:
        sEm = "False"
    End If
    
    Set db = CurrentDb

'update the supervisor table on click of button
        sSQL = "Update " & tbl & vbCr & _
                " SET [firstName] = '" & txtSUP1 & sP1 & _
                    "[lastName] = '" & txtSUP2 & sP1 & _
                    "[shift] = " & txtSHIFT & sP & _
                    "[email] = '" & txtEMAIL & sP1 & _
                    "[username] = '" & txtUSER & sP1 & _
                    "[password] = '" & txtPASS & sP1 & _
                    "[employed] = " & sEm & vbCr & _
                " WHERE [ID] = " & lID & ";"

    
    With db
        .Execute sSQL, dbFailOnError
        .Close
    End With
    
    MsgBox "Successfully updated!"
    listSUP.Requery
    
End Sub

Private Sub cmdUndo_Click()
    Call listSUP_AfterUpdate
End Sub

Private Sub listSUP_AfterUpdate()

    Dim db As DAO.Database
    Dim rs As DAO.Recordset
    
    Set db = CurrentDb
    Set rs = db.OpenRecordset("tblSUPERVISORS")

    lID = Nz(listSUP.Value, 0)
    
    If lID <> 0 Then
    
        'pull table information
        With rs
            .MoveFirst
            Do While Not .EOF
                If !ID = lID Then
                    txtSUP1 = Nz(!firstName)
                    txtSUP2 = Nz(!lastName)
                    txtSHIFT = Nz(!Shift)
                    txtEMAIL = Nz(!email)
                    txtUSER = Nz(!username)
                    txtPASS = Nz(!password)
                    tglEMPLOY = !Employed
                    Call tglEMPLOY_Click
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
    End If

    db.Close
    
End Sub


Private Sub tglEMPLOY_Click()

    With tglEMPLOY
        If (.Value = True) Then
            .Caption = "Yes"
            .FontBold = True
        ElseIf (.Value = False) Then
            .Caption = "No"
            .FontBold = False
        End If
    End With
    
End Sub

Private Sub tglEMPLOY_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub
