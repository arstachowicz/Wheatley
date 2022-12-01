Operation =1
Option =0
Where ="(((tblEP_BATHE.partNum)=868) AND ((tblEP_BATHE.rev)=1) AND ((tblEP_BATHE.obsolet"
    "e)=False) AND ((tblEP_BATHE.[R&D])=False))"
Begin InputTables
    Name ="tblEP_BATHE"
    Name ="tblPARTNUM"
    Name ="refREV"
End
Begin OutputColumns
    Expression ="tblEP_BATHE.ID"
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
End
Begin Joins
    LeftTable ="tblEP_BATHE"
    RightTable ="tblPARTNUM"
    Expression ="tblEP_BATHE.partNum = tblPARTNUM.ID"
    Flag =1
    LeftTable ="tblEP_BATHE"
    RightTable ="refREV"
    Expression ="tblEP_BATHE.Rev = refREV.ID"
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
    End
    Begin
        dbText "Name" ="tblEP_BATHE.ID"
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
    Bottom =371
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =126
        Top =45
        Right =598
        Bottom =377
        Top =0
        Name ="tblEP_BATHE"
        Name =""
    End
    Begin
        Left =646
        Top =12
        Right =790
        Bottom =156
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =838
        Top =12
        Right =982
        Bottom =156
        Top =0
        Name ="refREV"
        Name =""
    End
End
