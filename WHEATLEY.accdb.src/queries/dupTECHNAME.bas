Operation =1
Option =0
Where ="(((tblTECHNAME.firstName) In (SELECT [firstName] FROM [tblTECHNAME] As Tmp GROUP"
    " BY [firstName],[lastName] HAVING Count(*)>1  And [lastName] = [tblTECHNAME].[la"
    "stName])))"
Begin InputTables
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblTECHNAME.ID"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin OrderBy
    Expression ="tblTECHNAME.ID"
    Flag =1
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
        dbText "Name" ="tblTECHNAME.[lastName]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.[firstName]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.ID"
        dbInteger "ColumnWidth" ="672"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1206
    Bottom =929
    Left =-1
    Top =-1
    Right =1190
    Bottom =133
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
End
