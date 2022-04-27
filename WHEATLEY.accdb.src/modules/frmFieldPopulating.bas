Attribute VB_Name = "frmFieldPopulating"
Option Compare Database
Option Explicit


Function comboBoxLine(ByVal lineID As Long) As String

'update chemical field with change in line field

        comboBoxLine = "SELECT tblCHEMICALS.ID, tblCHEMICALS.chemical, tblLINES.ID " & _
                    "FROM tblLINES INNER JOIN (tblCHEMICALS INNER JOIN tblLOCATIONS ON tblCHEMICALS.ID = tblLOCATIONS.CHEMID) ON tblLINES.ID = tblLOCATIONS.LINEID " & _
                    "WHERE(((tblLINES.ID) = " & lineID & ")) " & _
                    "ORDER BY tblCHEMICALS.chemical;"


End Function

Function roomTempFill() As Double
On Error Resume Next

    Dim tbl As String
    Dim lastID As Long
    Dim lastD As Date
    
    tbl = "tblATMOSPHERE"

    lastID = DMax("[ID]", tbl)
    lastD = DLookup("[timeDate]", tbl, "[ID] = " & lastID)
    
    'checks if a value is available; otherwise, avoid error.
    If lastD = Date Then
        roomTempFill = DLookup("[temp]", tbl, "[id] = " & lastID)
    Else:
        roomTempFill = Null
    End If
End Function

Function subCat(cmbUse As Control, cmbSub As Control, Optional cmbLoc As Control)
'cmbUse: control that contains broad cateogry
'cmbSub: control that contains subcategory (to be filtered by this function)
'cmbLoc: (optional) sets focus to next control AFTER subcateogy field (cmdSub)

Dim subID As Long

    'check that commands are (in fact) comboboxes
    If (TypeName(cmbUse) = "ComboBox") And (TypeName(cmbSub) = "ComboBox") Then
        'check that something was selected in cmdUse
        If (IsNull(cmbUse) = False) Then
            subID = cmbUse.Value
            'dynamically change combobox based on value in cmbUse
            With cmbSub
                If (IsNull(cmbUse) = False) Then
                    .Enabled = True
                    .RowSource = "SELECT tblSUBCATEGORY.ID, tblSUBCATEGORY.category " & _
                                 "FROM tblSUBCATEGORY " & _
                                 "WHERE (((tblSUBCATEGORY.partTypeID)=" & subID & ")) " & _
                                 "ORDER BY tblSUBCATEGORY.category;"
                    .SetFocus
                    
                    'if subcategory fields are empty, block control
                    If (.ListCount = 0) Then
                        .Enabled = False
                        If (IsEmpty(cmbLoc) = False) Then
                            cmbLoc.SetFocus
                        End If
                    End If
                    
                Else:
                    .Enabled = False
                End If
            End With
        End If
    End If
    
End Function

Function subcategoryFilter(cmd As Control, filterCmd As Control)
'changes subcategories for useage designation
'cmd: the command combo box that is being generated
'filterCmd: the combo box that contains the value to filter subcategories

    With cmd
        If (TypeName(cmd) = "ComboBox") Then 'check that control is a combo box
            If (IsNull(filterCmd) = False) Then
                .RowSource = "SELECT tblSUBCATEGORY.ID, tblSUBCATEGORY.category, tblSUBCATEGORY.partTypeID FROM tblSUBCATEGORY " & _
                                   "WHERE (((tblSUBCATEGORY.partTypeID)=" & filterCmd.Value & ")) " & _
                                   "ORDER BY tblSUBCATEGORY.category;"
                If (.ListCount <> 0) Then
                    .Enabled = True
                Else:
                    .Enabled = False
                End If
            Else:
                .Enabled = False
            End If
        Else:
            MsgBox "The control entered is not a combobox."
        End If
    End With
    
End Function

Function ckCaption(ByVal sTGL As String, ByVal sCaption As String, frm As Form) As String
'changes toggle caption to indicate a selection was made

    With frm.Controls(sTGL)
        If (.Value = True) Then
            .Caption = "Done!"
            .FontBold = True
        Else:
            .Caption = sCaption
            .FontBold = False
        End If
    End With
    
End Function
Function tglCapt(cmd As Control, ByVal lType As Long)
'cmd: command button name
'lType:
    '1-- R&D
    '2-- Obsolete
    
    With cmd
        If (lType = 1) Then
            If (.Value = True) Then
                .Caption = "R && D"
                .FontBold = True
            Else
                .Caption = "Not R && D"
                .FontBold = False
            End If
        ElseIf (lType = 2) Then
            If (.Value = True) Then
                .Caption = "Obsolete"
                .FontBold = True
            Else
                .Caption = "Not Obsolete"
                .FontBold = False
            End If
        Else:
            MsgBox "An error has occurred with the toggle button."
        End If
    End With
    
End Function
Function concCheck(ByVal chemID As Long, ByVal Mol As Double) As Double
    'chemID: the chemical being tested
    'Mol: the measured concentration of the chemical in MOLARITY

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim tbl As String
Dim sChem As String

Dim minAcid As Double
Dim maxAcid As Double
Dim midAcid As Double

Dim barDen As Double
Dim barConcW As Double
Dim barMW As Double
Dim barMol As Double

tbl = "tblCHEMICALS"
Set db = CurrentDb
Set rs = db.OpenRecordset(tbl)

        With rs
            .MoveFirst
            
            Do Until .EOF
                If !ID = chemID Then
                    'determine operating range
                    minAcid = !opL
                    maxAcid = !opU
                    
                    barDen = !density
                    barConcW = !concentration
                    barMW = !molecularweight
                    sChem = !chemical
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
        
        'checks if percentage and adjusts
        If barConcW > 1 Then
            barConcW = barConcW / 100
        End If
        
        If minAcid > 1 Then
            minAcid = minAcid / 100
        End If
        
        If maxAcid > 1 Then
            maxAcid = maxAcid / 100
        End If
        
        'convert to molarity
            barMol = barDen * barConcW * 1000 / barMW '(molarity of barrel solution)
            maxAcid = maxAcid * barMol 'max concentration (molarity)
            minAcid = minAcid * barMol 'min concentration (molarity)
 
On Error GoTo calcErr:
            midAcid = (minAcid + maxAcid) / 2
            
    'tells whether to add acid or water, depending if over or under concentration. Adjusts to a middling value
            If midAcid <> 0 Then
                If Mol < minAcid Then 'add acid
                    concCheck = (midAcid - Mol) / (barMol - midAcid)
                ElseIf Mol > maxAcid Then 'add water
                    concCheck = (Mol / midAcid) - 1
                    sChem = "DI water"
                Else:
                    concCheck = 0
                End If
            End If
         
err_Exit:
            Exit Function
        
calcErr:
            MsgBox "There was a problem when making calculations."
            Resume err_Exit
        
End Function
Function notListed0107(NewData As String, Response As Integer, ByVal useage As Long, Optional subUse As String)
'form: form where this is being used and where the unlisted data was entered
'newdata: based on what is entered into the control (default)
'response: surpresses error messages (default)
'useage: corresponding ID from the table: tblPART_TYPES
'subUse: if useage has a subcategory, corresponding ID is here (optional) (ie, passivation fixtures use "tblPART_TYPE_PASS")

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim strTmp As String 'display message
Dim preFab As String
Dim sTbl As String 'table where part is stored
Dim sUse As String
Dim sSub As String
Dim sSubUse As String
Dim tbl0107 As String
Dim tbl156 As String
Dim qry0107 As String
Dim qry156 As String


'gather information on value entered, whether it is 01 or 07 part number. Identify table where this info is stored
    Set db = CurrentDb
    sTbl = Left(Trim(NewData), 3)
    sUse = DLookup("[partType]", "tblPART_TYPES", "[ID] = " & useage)
    
    tbl156 = "tblPART_156"
    qry156 = "dupPART_156"

    If (subUse = "") Then
        sSubUse = "Null"
    Else:
        sSubUse = CStr(subUse)
    End If
    
    
    
'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new " & sTbl & " number?"
        
    If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then
        'verification messagebox
        preFab = "The following will be automatically entered. Is this information correct?" & vbCr & vbCr & _
                    "Part Number: " & NewData & vbCr & _
                    "Rev: A" & vbCr & _
                    "Obsolete: False" & vbCr & _
                    "R&D: False" & vbCr & _
                    "Part Useage: " & sUse
                   
        'checks if a subcategory is entered and adjust messagebox text
        If (subUse <> "") And (IsEmpty(subUse) = False) Then
            sSub = DLookup("[category]", "tblSUBCATEGORY", "[ID] = " & subUse)
            preFab = preFab & vbCr & _
                    "Subcategory: " & sSub
        End If
        
        If MsgBox(preFab, vbYesNo + vbDefaultButton2 + vbQuestion, "New Data Confirmation") = vbYes Then
            
            If (sTbl = "01-") Or (sTbl = "07-") Then
                'identify which table/query should be used
                If (sTbl = "01-") Then
                    tbl0107 = "tblPART_01"
                    qry0107 = "dupPART_01"
                Else:
                    tbl0107 = "tblPART_07"
                    qry0107 = "dupPART_07"
                End If
                'Append the NewData as a record in the Categories table.
                strTmp = "INSERT INTO " & tbl0107 & " (partNumber, rev, obsolete, [R&D], partUseage, subcategory, creationDate) " & vbCrLf & _
                   "VALUES('" & NewData & "', 1, 0, 0, " & useage & ", " & sSubUse & ", #" & Date & "#);"
                Set rs = db.OpenRecordset(qry0107)
            ElseIf (sTbl = "156") Then
                strTmp = "INSERT INTO " & tbl156 & " (partNumber, rev, obsolete, [R&D], partUseage, subcategory, creationDate) " & vbCr & _
                     "VALUES('" & NewData & "', 1, 0, 0, " & CStr(useage) & ", " & sSubUse & ", #" & Date & "#);"
                Set rs = db.OpenRecordset(qry156)
            End If
            
            'if already in the system, send an alert and don't save
            With rs
                If .RecordCount <> 0 Then
                    DoCmd.RunCommand acCmdUndo
                    MsgBox "This is a duplicate part number."
                    .Close
                    Exit Function
                End If
                .Close
            End With
                        
            DBEngine(0)(0).Execute strTmp, dbFailOnError
        
            'Notify Access about the new record, so it requeries the combo.
            Response = acDataErrAdded
            
        End If
        
    Else:
        Response = acDataErrContinue
        
    End If

    db.Close
End Function

Function notListedTal(frm As Form, NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As Recordset
Dim strTmp As String
Dim queryName As String

queryName = "dupPARTNUM"
Set db = CurrentDb
Set rs = db.OpenRecordset(queryName)

    'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new part number?"
    
    If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then
    
        'Append the NewData as a record in the Categories table.
        strTmp = "INSERT INTO tblpartnum (partNum) " & _
                    "VALUES ('" & NewData & "');"
    
        'if already in the system, send an alert and don't save
        With rs
            If .RecordCount <> 0 Then
                DoCmd.RunCommand acCmdUndo
                MsgBox "This is a duplicate part number."
                .Close
                Exit Function
            End If
        End With
                    
        DBEngine(0)(0).Execute strTmp, dbFailOnError
    
        'Notify Access about the new record, so it requeries the combo.
        Response = acDataErrAdded
    Else:
        Response = acDataErrContinue
        
    End If
    
End Function

Function revPop(ByVal qdfName As String, ByVal sTbl As String, ctrlPrt As Control, ctrlRev As Control, Optional ctrlPDF As Control)
'checks if part and rev are already entered. If so, do not save and send a popup message to user
'also autopopulates a PDF name to speed up typing time and to eliminate errors (optional)

'qdfName: name of duplicate query (i.e. "dupPRESS")
'sTbl: name of original table (i.e. "tblPRESS")
'ctrlPrt: name of control that contains part information
'ctrlRev: name of control that contains rev information (i.e. "cmbRev")

Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
Dim sNum As String
Dim sRev As String
Dim sQDF As String
Dim lPart As Long
Dim lRev As Long
Dim sFie As String
Dim fie As Field
Dim sN As String

Set db = CurrentDb
Set qdf = db.QueryDefs(qdfName)
Set rs = db.OpenRecordset(sTbl)
sN = "Null"

'if already in the system, popup alert and don't save
If (Trim(ctrlPrt.Value) <> "") And (Trim(ctrlRev.Value) <> "") Then
    lPart = ctrlPrt.Value
    lRev = ctrlRev.Value
    
    'identifies if record ID is listed as ID or autoID for query
    With rs
        For Each fie In .Fields
            If (fie.Name = "ID") Then
                sFie = "ID"
                Exit For
            ElseIf (fie.Name = "autoID") Then
                sFie = "autoID"
                Exit For
            End If
        Next fie
        .Close
    End With
    
    If (sFie <> "") Then
        'build duplicate query
        sQDF = "SELECT " & sTbl & "." & sFie & ", tblPARTNUM.partNum, refREV.rev " & vbCr & _
                "FROM (" & sTbl & " INNER JOIN tblPARTNUM ON " & sTbl & ".partNum = tblPARTNUM.ID) INNER JOIN refREV ON " & sTbl & ".Rev = refREV.ID " & vbCr & _
                "WHERE (((" & sTbl & ".partNum)=" & lPart & ") AND ((" & sTbl & ".rev)=" & lRev & ") AND ((" & sTbl & ".obsolete)=False) AND ((" & sTbl & ".[R&D])=False));"
        qdf.SQL = sQDF
        
        Set rs = qdf.OpenRecordset
         
        'check if information on same part/rev has a record. If so, close and reject.
        With rs
                'pull string info (stored in combo, column 2)
                sNum = Nz(Trim(ctrlPrt.Column(1)), sN)
                sRev = Nz(Trim(ctrlRev.Column(1)), sN)
                
                If .RecordCount <> 0 Then
                    'send an alert that part and rev combo are already entered
                    .MoveFirst
                    MsgBox "Part number " & sNum & " (Rev " & sRev & ") has already been entered.", , "Matching Data Found"
                ElseIf (.RecordCount = 0) And (sNum <> sN) And (sRev <> sN) Then
                    'autopopulates PDF field of form, designated as ctrlPDF, to eliminate type-o mistakes and speed up entry
                    If (IsEmpty(ctrlPDF) = True) Or (IsNull(ctrlPDF) = True) Then
                        ctrlPDF.Value = sNum & "-PL_" & sRev
                    End If
                End If
                .Close
        End With
    End If

End If

    qdf.Close
    db.Close
    
End Function
