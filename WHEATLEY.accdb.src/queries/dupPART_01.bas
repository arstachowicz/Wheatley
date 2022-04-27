Operation =1
Option =0
Where ="(((tblPART_01.partNumber) In (SELECT [partNumber] FROM [tblPART_01] As Tmp GROUP"
    " BY [partNumber],[rev] HAVING Count(*)>1  And [rev] = [tblPART_01].[rev])) AND ("
    "(tblPART_01.obsolete)=False))"
Begin InputTables
    Name ="tblPART_01"
    Name ="refREV"
End
Begin OutputColumns
    Expression ="tblPART_01.autoID"
    Expression ="tblPART_01.partNumber"
    Expression ="refREV.rev"
    Expression ="tblPART_01.obsolete"
End
Begin Joins
    LeftTable ="tblPART_01"
    RightTable ="refREV"
    Expression ="tblPART_01.rev = refREV.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblPART_01.autoID"
    Flag =1
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
Begin
    Begin
        dbText "Name" ="tblPART_01.[partNumber]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.[obsolete]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.partNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.obsolete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_01.autoID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1643
    Bottom =929
    Left =-1
    Top =-1
    Right =1190
    Bottom =16
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblPART_01"
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
End
