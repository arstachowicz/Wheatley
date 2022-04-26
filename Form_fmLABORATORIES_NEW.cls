VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmLABORATORIES_NEW"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub cmdUndo_Click()

    website = Null
    listTEST = Null
    emailContact = Null
    
    With nameLab
        .Value = Null
        .SetFocus
    End With
    
End Sub
