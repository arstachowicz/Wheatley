Operation =1
Option =0
Where ="(((tblWASTEWATER.timeDate) In (SELECT [timeDate] FROM [tblWASTEWATER] As Tmp GRO"
    "UP BY [timeDate],[lvlP] HAVING Count(*)>1 )))"
Begin InputTables
    Name ="tblWASTEWATER"
End
Begin OutputColumns
    Expression ="tblWASTEWATER.timeDate"
    Expression ="tblWASTEWATER.ID"
End
Begin OrderBy
    Expression ="tblWASTEWATER.ID"
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
        dbText "Name" ="tblWASTEWATER.[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.timeDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.ID"
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
    Bottom =259
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblWASTEWATER"
        Name =""
    End
End
