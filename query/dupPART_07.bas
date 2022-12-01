Operation =1
Option =0
Where ="(((tblPART_07.partNumber) In (SELECT [partNumber] FROM [tblPART_07] As Tmp GROUP"
    " BY [partNumber] HAVING Count(*)>1 )) AND ((tblPART_07.obsolete)=False))"
Begin InputTables
    Name ="tblPART_07"
End
Begin OutputColumns
    Expression ="tblPART_07.partNumber"
    Expression ="tblPART_07.obsolete"
    Expression ="tblPART_07.autoID"
    Expression ="tblPART_07.partUseage"
End
Begin OrderBy
    Expression ="tblPART_07.partNumber"
    Flag =1
    Expression ="tblPART_07.autoID"
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
        dbText "Name" ="tblPART_07.[partNumber]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_07.[obsolete]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_07.partNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_07.obsolete"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_07.autoID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPART_07.partUseage"
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
    Bottom =159
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblPART_07"
        Name =""
    End
End
