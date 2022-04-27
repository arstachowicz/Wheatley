Operation =1
Option =0
Where ="(((tblEP.partNum)=44) AND ((tblEP.rev)=29) AND ((tblEP.obsolete)=False) AND ((tb"
    "lEP.[R&D])=False))"
Begin InputTables
    Name ="tblEP"
    Name ="tblPARTNUM"
    Name ="refREV"
End
Begin OutputColumns
    Expression ="tblEP.ID"
    Expression ="tblEP.partNum"
    Expression ="tblEP.rev"
    Expression ="tblEP.obsolete"
    Expression ="tblEP.[R&D]"
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
End
Begin Joins
    LeftTable ="tblEP"
    RightTable ="tblPARTNUM"
    Expression ="tblEP.partNum = tblPARTNUM.ID"
    Flag =2
    LeftTable ="tblEP"
    RightTable ="refREV"
    Expression ="tblEP.Rev = refREV.ID"
    Flag =2
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
        dbText "Name" ="tblEP.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.rev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.obsolete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.[R&D]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1685
    Bottom =937
    Left =-1
    Top =-1
    Right =1329
    Bottom =305
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblEP"
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
