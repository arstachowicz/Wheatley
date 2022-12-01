Operation =1
Option =0
Where ="(((tblSUPERVISORS.firstName) In (SELECT [firstName] FROM [tblSUPERVISORS] As Tmp"
    " GROUP BY [firstName],[lastName] HAVING Count(*)>1  And [lastName] = [tblSUPERVI"
    "SORS].[lastName])))"
Begin InputTables
    Name ="tblSUPERVISORS"
End
Begin OutputColumns
    Expression ="tblSUPERVISORS.firstName"
    Expression ="tblSUPERVISORS.lastName"
    Expression ="tblSUPERVISORS.ID"
End
Begin OrderBy
    Expression ="tblSUPERVISORS.firstName"
    Flag =0
    Expression ="tblSUPERVISORS.lastName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tblSUPERVISORS.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.lastName"
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
        Name ="tblSUPERVISORS"
        Name =""
    End
End
