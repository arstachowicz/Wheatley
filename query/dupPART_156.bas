Operation =1
Option =0
Where ="(((tblPART_156.partNumber) In (SELECT [partNumber] FROM [tblPART_07] As Tmp GROU"
    "P BY [partNumber] HAVING Count(*)>1 )) AND ((tblPART_156.obsolete)=False))"
Begin InputTables
    Name ="refREV"
    Name ="tblPART_156"
End
Begin OutputColumns
    Expression ="tblPART_156.partNumber"
    Expression ="refREV.rev"
    Expression ="tblPART_156.autoID"
End
Begin Joins
    LeftTable ="tblPART_156"
    RightTable ="refREV"
    Expression ="tblPART_156.rev = refREV.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblPART_156.partNumber"
    Flag =1
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
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_156.autoID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_156.partNumber"
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
    Bottom =268
    Left =0
    Top =0
    ColumnsShown =539
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
        Left =41
        Top =33
        Right =185
        Bottom =177
        Top =0
        Name ="tblPART_156"
        Name =""
    End
End
