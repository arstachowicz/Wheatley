VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_fmWHERE_USED"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset

Private Sub cmdEXIT_Click()
Dim formName As String
formName = "fmWHERE_USED"

    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
    
End Sub

Private Sub cmdPDF_Click()
Dim partID As Long
Dim pageNum As Long
Dim fileName As String
Dim tbl As String
Dim sFieLay As String
Dim sFiePage As String
Dim sWhere As String

tbl = Me.listPARTS.Column(7)
partID = Nz(Me.listPARTS, 0)

'build dlookup
If (tbl = "tblEP") Or (tbl = "tblPRESS") Then
    sFieLay = "[fileName]"
    sFiePage = "[filePage]"
ElseIf (tbl = "tblLEAK_CHECK") Then
    sFieLay = "[processLayout]"
    sFiePage = "[filePage]"
ElseIf (tbl = "tblPASSIVATE") Then
    sFieLay = "[fileName]"
    sFiePage = "[PageNUM]"
Else:
    MsgBox "There was an error with the table information. The part number being searched does not have the proper information for a DLookUP.)"
End If

'checks if user selected part
If (IsEmpty(partID) = True) Or (partID = 0) Then
    MsgBox "Select a part from the list."
ElseIf (tbl <> "") And (IsNull(tbl) = False) Then

    'lookup stored pdf information
    sWhere = "[partNum] = " & partID
    fileName = Nz(DLookup(sFieLay, tbl, sWhere))
    pageNum = Nz(DLookup(sFiePage, tbl, sWhere), 1)
    
    If fileName = "" Then 'checks if field is null
        MsgBox "A process layout is not entered for this part number."
    Else: 'open file
        fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & fileName & ".pdf"
        Call pdfOpen(fileName, pageNum)
    End If
End If

End Sub

Private Sub txtSEARCH_AfterUpdate()
Dim sCate As String
Dim sLoc As String
Dim sSub As String
Dim tbl As String
Dim tblALL As String
Dim sSQL As String
Dim sOLD As String
Dim sNEW As String
Dim sSearch As String
Dim sWhere As String
Dim i As Long
Dim sN As String

    tbl = "qryWHERE_USED"
    tblALL = "qryPARTNUM_ALL"
    sWhere = tblALL & ".partNumber)="
    sN = "n/a"
    Set db = CurrentDb
    Set qdf = db.QueryDefs(tbl)
    

  'Checks that a part number has been entered
    If (IsNull(Trim(txtSEARCH)) = False) Then
        sSQL = qdf.SQL
        sSearch = """" & Trim(txtSEARCH) & """" 'remove trailing commas (if any) and save as string
        i = InStrRev(sSQL, sWhere, , vbBinaryCompare) 'position of WHERE clause

        'make corrections to string pull from SQL
        sOLD = Mid(sSQL, (i + Len(sWhere)), 13) 'pull what is already entered
        sOLD = Replace(Replace(sOLD, "(", ""), ")", "") 'remove extra characters
        sSQL = Replace(sSQL, sOLD, sSearch) 'jump to end of sql (speeds up code runtime?)
        qdf.SQL = sSQL 'update
        
        Set rs = qdf.OpenRecordset
        
        With rs
            If (.RecordCount <> 0) Then
                .MoveFirst
                sLoc = Nz(!locName, sN)
                sCate = Nz(!partType, sN)
                sSub = Nz(!subcategory, sN)
                
                'turns on listbox and displays "n/a" if nothing was found
                With listPARTS
                    .RowSourceType = "Table/Query"
                    .RowSource = tbl
                    .ColumnCount = 7
                End With
                
                .Close
            Else:
                'in case query fails or there are no parts listed, then search for location, category, subcat data
                .Close
                Set rs = db.OpenRecordset(tblALL)
                
                rs.MoveFirst
                Do Until rs.EOF
                    If rs!partNumber = Trim(txtSEARCH) Then
                        sLoc = Nz(rs![locName], sN)
                        sCate = Nz(rs![partType], sN)
                        sSub = Nz(rs![subcategory], sN)
                        Exit Do
                    Else:
                        rs.MoveNext
                    End If
                Loop
                
                rs.Close
                
                'turns off listbox and displays "n/a" if nothing was found
                With listPARTS
                    .RowSourceType = "Value List"
                    .RowSource = ";" & sN
                    .ColumnCount = 2
                End With
                
            End If
            
        End With
            
            'display location and category tags with the generated value
                'category label tag
            With lblTYPE
                If (IsNull(sCate) = False) Or (Trim(sCate) <> "") Then
                    .Visible = True
                Else:
                    .Visible = False
                End If
            End With
            
            With lblCATEG
                .Visible = True
                .Caption = sCate
            End With
            
                'subcategory label tag
            With lblSUBTX
                If (IsNull(sSub) = False) Or (Trim(sSub) <> "") Then
                    .Visible = True
                Else:
                    .Visible = False
                End If
            End With
            
            With lblSUBCAT
                .Visible = True
                .Caption = sSub
            End With
            
                'location label tag
            With lblLOCAT
                If (IsNull(sLoc) = False) Or (Trim(sLoc) <> "") Then
                    .Visible = True
                Else:
                    .Visible = False
                End If
            End With

            With lblLOC
                .Visible = True
                .Caption = sLoc
            End With
        
    Else:
        'nothing is returned then hide labels
        Call cmdUndo_Click
    End If
    
    'clear and close tables
    qdf.Close
    db.Close
    
    listPARTS.Requery
    
    
   Exit Sub
   
missingpart:
    MsgBox "The part number you've entered has not been entered into WHEATLEY."
    txtSEARCH.SetFocus
    
End Sub

Private Sub cmdUndo_Click()
    
    With txtSEARCH
        .Value = Null
        .SetFocus
    End With
    
    lblTYPE.Visible = False
    lblCATEG.Visible = False
    lblLOCAT.Visible = False
    lblLOC.Visible = False
    lblSUBTX.Visible = False
    lblSUBCAT.Visible = False
    
    With listPARTS
        listPARTS.RowSourceType = "Value List"
        listPARTS.RowSource = "X;Enter a part into text box and hit tab key to search."
        listPARTS.ColumnCount = 2
    End With
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Call cmdUndo_Click

End Sub

Private Sub listPARTS_DblClick(Cancel As Integer)
    Call cmdPDF_Click
End Sub
