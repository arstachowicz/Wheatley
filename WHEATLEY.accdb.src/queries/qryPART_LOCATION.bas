Operation =1
Option =0
Where ="(((tblPART_01.autoID)=1394))"
Begin InputTables
    Name ="tblPART_01"
End
Begin OutputColumns
    Expression ="tblPART_01.autoID"
    Expression ="tblPART_01.rev"
    Expression ="tblPART_01.location"
    Expression ="tblPART_01.linkedID"
End
Begin OrderBy
    Expression ="tblPART_01.rev"
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
        dbText "Name" ="tblPART_01.autoID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.location"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.linkedID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.rev"
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
    Bottom =428
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =348
        Top =0
        Name ="tblPART_01"
        Name =""
    End
End
