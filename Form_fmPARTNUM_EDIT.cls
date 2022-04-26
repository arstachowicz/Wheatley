VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPARTNUM_EDIT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdUndo_Click()
    Call Form_Load
End Sub

Private Sub cmdUpdate_Click()

    Dim db As DAO.Database
    Dim lID As Long
    Dim sP As String
    Dim stSQL As String
    Dim sN As String
    Dim sTbl As String
    
    lID = Nz(listSEARCH.Value, 0)
    sP = ", "
    sN = "Null"
    sTbl = "tblPARTNUM"
    
    Set db = CurrentDb

    If (lID <> 0) Then
        'update electrode table
        stSQL = "Update " & sTbl & vbCr & _
                "SET [partNum] = " & Nz(txtDIA1, sN) & sP & _
                    "[surAreaInt] = " & Nz(txtDIA2, sN) & sP & _
                    "[surAreaExt] = " & Nz(txtLEN1, sN) & vbCr & _
                "WHERE [ID] = " & lID & ";"

         db.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
    db.Close
    
End Sub

Private Sub Form_Load()
'clear text fields
    txtPART = Null
    txtSA_I = Null
    txtSA_E = Null
End Sub

Private Sub listSEARCH_AfterUpdate()
    Dim db As DAO.Database
    Dim rs As DAO.Recordset
    Dim lID As Long
    
    Set db = CurrentDb
    Set rs = db.OpenRecordset("tblPARTNUM")
    
    lID = Nz(listSEARCH.Value, 0)
    
    If lID <> 0 Then
    
        'pull table information
        With rs
            .MoveFirst
            Do While Not .EOF
                If !ID = lID Then
                    txtPART = Nz(!partNum)
                    txtSA_I = Nz(!surAreaInt)
                    txtSA_E = Nz(!surAreaExt)
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With

    End If
    
    db.Close
    
End Sub

