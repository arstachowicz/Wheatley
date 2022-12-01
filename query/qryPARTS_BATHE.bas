Operation =1
Option =0
Where ="(((tblPART_TYPES.ID)=12) AND ((tblPART_01.obsolete)=False))"
Begin InputTables
    Name ="tblPART_01"
    Name ="tblPART_TYPES"
    Name ="tblSUBCATEGORY"
End
Begin OutputColumns
    Expression ="tblPART_01.partNumber"
    Expression ="tblPART_TYPES.partType"
    Expression ="tblSUBCATEGORY.category"
    Expression ="tblPART_01.notes"
    Expression ="tblPART_01.autoID"
End
Begin Joins
    LeftTable ="tblPART_01"
    RightTable ="tblPART_TYPES"
    Expression ="tblPART_01.partUseage = tblPART_TYPES.ID"
    Flag =2
    LeftTable ="tblPART_01"
    RightTable ="tblSUBCATEGORY"
    Expression ="tblPART_01.subcategory = tblSUBCATEGORY.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblPART_01.partNumber"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[qryPARTS_BATHE].[category], [qryPARTS_BATHE].[partNumber]"
Begin
    Begin
        dbText "Name" ="tblPART_TYPES.partType"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUBCATEGORY.category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.partNumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2925"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPART_01.notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.autoID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.uniqID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partUseage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.subcategory"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_TYPES.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUBCATEGORY.partTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.obsolete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUBCATEGORY.ID"
        dbLong "AggregateType" ="-1"
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
    Bottom =620
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =170
        Top =92
        Right =453
        Bottom =418
        Top =0
        Name ="tblPART_01"
        Name =""
    End
    Begin
        Left =465
        Top =33
        Right =609
        Bottom =177
        Top =0
        Name ="tblPART_TYPES"
        Name =""
    End
    Begin
        Left =673
        Top =274
        Right =817
        Bottom =418
        Top =0
        Name ="tblSUBCATEGORY"
        Name =""
    End
End
