VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmPASSWORD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdCHECK_Click()

    Dim rs As Recordset
    Dim fm As String
    
    fm = "fmENGINEER"
    Set rs = CurrentDb.OpenRecordset("tblSupervisors", dbOpenSnapshot, dbReadOnly)

    rs.FindFirst "username='" & txtUsername & "'"
    
    If rs.NoMatch = True Then 'if there is no match to username
        lblUsername.Visible = True
        txtUsername.SetFocus
        Exit Sub
    End If
    
    Me.lblUsername.Visible = False
    
    If rs!password <> txtPassword Then 'if the password is wrong
        lblPassword.Visible = True
        txtPassword.SetFocus
        rs.Close
        Exit Sub
    End If

    lblPassword.Visible = False
    lblUsername.Visible = False
    rs.Close
    DoCmd.Close
    
    On Error Resume Next
    DoCmd.BrowseTo acForm, fm, "fmHome.NavigationSubform", "", "", 1
    DoCmd.BrowseTo acForm, fm, "fmHome_CL.NavigationSubform", "", "", 1
    DoCmd.BrowseTo acForm, fm, "fmHome_CR.NavigationSubform", "", "", 1


    
End Sub

Private Sub Command58_Click()
    DoCmd.Close
End Sub


