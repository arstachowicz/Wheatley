Operation =1
Option =0
Begin InputTables
    Name ="tblEP_BATHE"
    Name ="tblPARTNUM"
    Name ="tblPART_01"
End
Begin OutputColumns
    Expression ="tblPARTNUM.partNum"
    Expression ="tblEP_BATHE.assemblyID"
    Expression ="tblPART_01.partNumber"
    Expression ="tblEP_BATHE.pageNum"
    Alias ="Expr1"
    Expression ="tblEP_BATHE.processRev"
    Expression ="tblEP_BATHE.epVolt"
    Expression ="tblEP_BATHE.epTime"
    Expression ="tblEP_BATHE.processLayout"
End
Begin Joins
    LeftTable ="tblEP_BATHE"
    RightTable ="tblPARTNUM"
    Expression ="tblEP_BATHE.partNum = tblPARTNUM.ID"
    Flag =2
    LeftTable ="tblEP_BATHE"
    RightTable ="tblPART_01"
    Expression ="tblEP_BATHE.assemblyID = tblPART_01.autoID"
    Flag =2
End
Begin OrderBy
    Expression ="tblEP_BATHE.processRev"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partNumber"
        dbMemo "Caption" ="Base 1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL_1.partNumber"
        dbMemo "Caption" ="Base 2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL_2.partNumber"
        dbMemo "Caption" ="Ground Electrode 1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2076"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tblEP_BATHE.pageNum"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblEP_BATHE.processLayout"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL_3.partNumber"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
        dbMemo "Caption" ="Ground Electrode 2"
        dbInteger "ColumnWidth" ="2076"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =724
    Bottom =646
    Left =-1
    Top =-1
    Right =708
    Bottom =505
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =248
        Bottom =405
        Top =0
        Name ="tblEP_BATHE"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =528
        Top =12
        Right =672
        Bottom =156
        Top =0
        Name ="tblPART_01"
        Name =""
    End
End
