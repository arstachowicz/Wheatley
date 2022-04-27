Operation =1
Option =0
Begin InputTables
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblPARTNUM.ID"
    Expression ="tblPARTNUM.partNum"
    Expression ="tblPARTNUM.surAreaInt"
    Expression ="tblPARTNUM.surAreaExt"
End
Begin OrderBy
    Expression ="tblPARTNUM.partNum"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[qryPARTNUM].[ID] DESC"
Begin
    Begin
        dbText "Name" ="tblPARTNUM.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.surAreaInt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.surAreaExt"
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
    Right =1669
    Bottom =484
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
