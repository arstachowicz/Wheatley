Operation =1
Option =16
RowCount ="25"
Begin InputTables
    Name ="tbLCHEMICALS_MOVE"
    Name ="tblCHEMICALS"
    Name ="tblLINES"
    Name ="tblTECHNAME"
    Name ="tblLINES"
    Alias ="tblLINES_1"
End
Begin OutputColumns
    Expression ="tbLCHEMICALS_MOVE.timeDate"
    Expression ="tbLCHEMICALS_MOVE.timeHour"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tbLCHEMICALS_MOVE.volume"
    Expression ="tbLCHEMICALS_MOVE.transferred"
    Expression ="tbLCHEMICALS_MOVE.added"
    Expression ="tbLCHEMICALS_MOVE.drained"
    Expression ="tblLINES_1.Line"
    Expression ="tblTECHNAME.firstName"
End
Begin Joins
    LeftTable ="tbLCHEMICALS_MOVE"
    RightTable ="tblCHEMICALS"
    Expression ="tbLCHEMICALS_MOVE.[chemical] = tblCHEMICALS.ID"
    Flag =2
    LeftTable ="tbLCHEMICALS_MOVE"
    RightTable ="tblLINES"
    Expression ="tbLCHEMICALS_MOVE.line = tblLINES.ID"
    Flag =2
    LeftTable ="tbLCHEMICALS_MOVE"
    RightTable ="tblTECHNAME"
    Expression ="tbLCHEMICALS_MOVE.techName = tblTECHNAME.ID"
    Flag =2
    LeftTable ="tbLCHEMICALS_MOVE"
    RightTable ="tblLINES_1"
    Expression ="tbLCHEMICALS_MOVE.movedLine = tblLINES_1.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tbLCHEMICALS_MOVE.timeDate"
    Flag =1
    Expression ="tbLCHEMICALS_MOVE.timeHour"
    Flag =1
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
Begin
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1896"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Tech"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1992"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Chemical"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tblLINES_1.Line"
        dbMemo "Caption" ="Transferred to Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2052"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.volume"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2232"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Amount (gal)"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.transferred"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.added"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Added?"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tbLCHEMICALS_MOVE.drained"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Drained?"
        dbInteger "ColumnOrder" ="7"
    End
End
Begin
    State =0
    Left =5
    Top =368
    Right =1569
    Bottom =691
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tbLCHEMICALS_MOVE"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =780
        Top =15
        Right =960
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =1020
        Top =15
        Right =1200
        Bottom =195
        Top =0
        Name ="tblLINES_1"
        Name =""
    End
End
