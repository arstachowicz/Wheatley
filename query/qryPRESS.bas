Operation =1
Option =16
RowCount ="1"
Where ="(((tblPARTNUM.partNum) = \"03-33-0029\"))"
Begin InputTables
    Name ="tblPRESS"
    Name ="refREV"
    Name ="tblPARTNUM"
    Name ="qryPARTNUM_ALL"
    Name ="qryPARTNUM_ALL"
    Alias ="qryPARTNUM_ALL_1"
End
Begin OutputColumns
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
    Expression ="tblPRESS.partTop"
    Alias ="topStr"
    Expression ="qryPARTNUM_ALL.partNumber"
    Expression ="tblPRESS.partBot"
    Alias ="botStr"
    Expression ="qryPARTNUM_ALL_1.partNumber"
    Expression ="tblPRESS.ID"
    Expression ="tblPRESS.fileName"
    Expression ="tblPRESS.filePage"
End
Begin Joins
    LeftTable ="tblPRESS"
    RightTable ="refREV"
    Expression ="tblPRESS.rev = refREV.ID"
    Flag =2
    LeftTable ="tblPRESS"
    RightTable ="tblPARTNUM"
    Expression ="tblPRESS.partNum = tblPARTNUM.ID"
    Flag =1
    LeftTable ="tblPRESS"
    RightTable ="qryPARTNUM_ALL"
    Expression ="tblPRESS.partTop = qryPARTNUM_ALL.uniqID"
    Flag =2
    LeftTable ="tblPRESS"
    RightTable ="qryPARTNUM_ALL_1"
    Expression ="tblPRESS.partBot = qryPARTNUM_ALL_1.uniqID"
    Flag =2
End
Begin OrderBy
    Expression ="refREV.rev"
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
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblPRESS.partTop"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="996"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPRESS.partBot"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPRESS.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="topStr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="botStr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPRESS.filePage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPRESS.fileName"
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
    Bottom =253
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblPRESS"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="refREV"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =780
        Top =15
        Right =960
        Bottom =195
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
    Begin
        Left =1020
        Top =15
        Right =1200
        Bottom =195
        Top =0
        Name ="qryPARTNUM_ALL_1"
        Name =""
    End
End
