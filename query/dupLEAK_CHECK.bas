Operation =1
Option =0
Where ="(((tblLEAK_CHECK.partNum)=267) AND ((tblLEAK_CHECK.rev)=28) AND ((tblLEAK_CHECK."
    "obsolete)=False) AND ((tblLEAK_CHECK.[R&D])=False))"
Begin InputTables
    Name ="tblLEAK_CHECK"
    Name ="tblPARTNUM"
    Name ="refREV"
End
Begin OutputColumns
    Expression ="tblLEAK_CHECK.autoID"
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
End
Begin Joins
    LeftTable ="tblLEAK_CHECK"
    RightTable ="tblPARTNUM"
    Expression ="tblLEAK_CHECK.partNum = tblPARTNUM.ID"
    Flag =1
    LeftTable ="tblLEAK_CHECK"
    RightTable ="refREV"
    Expression ="tblLEAK_CHECK.Rev = refREV.ID"
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
        dbText "Name" ="tblLEAK_CHECK.autoID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1679
    Bottom =929
    Left =-1
    Top =-1
    Right =1663
    Bottom =367
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblLEAK_CHECK"
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
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="refREV"
        Name =""
    End
End
