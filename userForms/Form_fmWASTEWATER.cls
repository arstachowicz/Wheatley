VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmWASTEWATER"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Command121_Click()
On Error Resume Next
    
    timeDate = Null
    laboratory = Null
    lvlHg = Null
    lvlAs = Null
    lvlCd = Null
    lvlCr = Null
    lvlCu = Null
    lvlPb = Null
    lvlMo = Null
    lvlNi = Null
    lvlSe = Null
    lvlAg = Null
    lvlZn = Null
    lvlTotSuspSolids = Null
    lvlP = Null
    lvlBOD = Null
    timeDate.SetFocus
    
End Sub

Private Sub Command51_Click()
On Error GoTo Macro1_Err

Dim calDate As Date
Dim cqryDate As Date
Dim queryName As String
Dim sMessage As String
Dim dPhos As Double
Dim opSelect As Integer
Dim sTbl As String
Dim sVal As String
Dim sP As String
Dim sN As String

queryName = "dupWASTEWATER"
sTbl = "tblWASTEWATER"
sP = ", "
sN = "Null"

    calDate = Nz(Trim(timeDate.Value), 0)

    If calDate = 0 Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, "Missing Info"
        timeDate.SetFocus
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory.", vbOKOnly, "Missing Info"
        laboratory.SetFocus
    Else:
    
        If ckIncomplete("lvl*", Me, True, 1) = False Then 'check for empties
            With Me
                sVal = "#" & calDate & "#, " & Nz(.laboratory, sN) & sP & Nz(.lvlHg, sN) & sP & Nz(.lvlAs, sN) & sP & Nz(.lvlCd, sN) & sP & Nz(.lvlCr, sN) & sP & Nz(.lvlCu, sN) & sP & _
                        Nz(.lvlPb, sN) & sP & Nz(.lvlMo, sN) & sP & Nz(.lvlNi, sN) & sP & Nz(.lvlSe, sN) & sP & Nz(.lvlAg, sN) & sP & Nz(.lvlZn, sN) & sP & Nz(.lvlTotSuspSolids, sN) & sP & Nz(.lvlP, sN) & sP & Nz(.lvlBOD, sN)
            End With
            
            
        On Error GoTo recAddErr:
            Call dupPartEntry(queryName, Me.timeDate, sTbl, sVal, "", Empty)
            Call Command121_Click
            Call Form_Load
            
        End If
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit

mesBoxErr:
    MsgBox "There was an error when creating an alert popup.", vbOKOnly, "Error"
    Resume Macro1_Exit
    
recAddErr:
    MsgBox "A record was unable to be added to the table.", vbOKOnly, "Error"
    Resume Macro1_Exit

End Sub

Private Sub Form_Load()
Dim taskID As Long
Dim nextDate As Date

taskID = 15 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
End Sub
