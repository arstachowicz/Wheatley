Operation =1
Option =0
Where ="(((tblPARTNUM.partNum) In (SELECT [partNum] FROM [tblPARTNUM] As Tmp GROUP BY [p"
    "artNum] HAVING Count(*)>1 )))"
Begin InputTables
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblPARTNUM.ID"
    Expression ="tblPARTNUM.partNum"
End
Begin OrderBy
    Expression ="tblPARTNUM.ID"
    Flag =1
    Expression ="tblPARTNUM.partNum"
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
        dbText "Name" ="tblPARTNUM.[partNum]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblPARTNUM.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1643
    Bottom =937
    Left =-1
    Top =-1
    Right =1627
    Bottom =175
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
End
