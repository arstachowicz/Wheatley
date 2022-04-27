Operation =1
Option =0
Begin InputTables
    Name ="tblPART_01"
    Name ="refREV"
    Name ="tblPART_TYPES"
    Name ="tblPART_STORAGE"
    Name ="qryPARTNUM_ALL"
    Name ="tblSUBCATEGORY"
End
Begin OutputColumns
    Expression ="tblPART_01.partNumber"
    Expression ="refREV.rev"
    Expression ="tblPART_01.obsolete"
    Expression ="tblPART_01.[r&d]"
    Expression ="tblPART_TYPES.partType"
    Expression ="tblSUBCATEGORY.category"
    Expression ="tblPART_01.notes"
    Expression ="tblPART_STORAGE.locName"
    Expression ="tblPART_01.creationDate"
    Expression ="qryPARTNUM_ALL.partNumber"
End
Begin Joins
    LeftTable ="tblPART_01"
    RightTable ="refREV"
    Expression ="tblPART_01.rev = refREV.ID"
    Flag =2
    LeftTable ="tblPART_01"
    RightTable ="tblPART_TYPES"
    Expression ="tblPART_01.partUseage = tblPART_TYPES.ID"
    Flag =2
    LeftTable ="tblPART_01"
    RightTable ="tblPART_STORAGE"
    Expression ="tblPART_01.location = tblPART_STORAGE.ID"
    Flag =2
    LeftTable ="tblPART_01"
    RightTable ="qryPARTNUM_ALL"
    Expression ="tblPART_01.linkedID = qryPARTNUM_ALL.uniqID"
    Flag =2
    LeftTable ="tblPART_01"
    RightTable ="tblSUBCATEGORY"
    Expression ="tblPART_01.subcategory = tblSUBCATEGORY.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblPART_01.partNumber"
    Flag =0
    Expression ="refREV.rev"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="Linked #"
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="14"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
dbMemo "Filter" ="([qryPART_01].[partType]=\"Bathe\")"
Begin
    Begin
        dbText "Name" ="tblPART_01.partNumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblPART_01.obsolete"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="708"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblPART_TYPES.partType"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Useage"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblPART_01.[r&d]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
        dbInteger "ColumnWidth" ="945"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPART_01.notes"
        dbInteger "ColumnWidth" ="3744"
        dbInteger "ColumnOrder" ="9"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_STORAGE.locName"
        dbInteger "ColumnWidth" ="2100"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.creationDate"
        dbInteger "ColumnOrder" ="11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partNumber"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Linked Part"
        dbInteger "ColumnOrder" ="8"
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSUBCATEGORY.category"
        dbMemo "Caption" ="Subcategory"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =653
    Bottom =646
    Left =-1
    Top =-1
    Right =637
    Bottom =-1
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =433
        Top =0
        Name ="tblPART_01"
        Name =""
    End
    Begin
        Left =519
        Top =248
        Right =699
        Bottom =428
        Top =0
        Name ="refREV"
        Name =""
    End
    Begin
        Left =439
        Top =33
        Right =619
        Bottom =213
        Top =0
        Name ="tblPART_TYPES"
        Name =""
    End
    Begin
        Left =679
        Top =15
        Right =859
        Bottom =195
        Top =0
        Name ="tblPART_STORAGE"
        Name =""
    End
    Begin
        Left =919
        Top =15
        Right =1099
        Bottom =195
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
    Begin
        Left =288
        Top =12
        Right =432
        Bottom =156
        Top =0
        Name ="tblSUBCATEGORY"
        Name =""
    End
End
