Operation =1
Option =16
RowCount ="1"
Where ="(((tblPARTNUM.partNum)=\"03-33-\") AND ((tblPASSIVATE.obsolete)=False) AND ((tbl"
    "PASSIVATE.[r&d])=False))"
Begin InputTables
    Name ="tblPASSIVATE"
    Name ="refREV"
    Name ="qryPARTNUM_ALL"
    Name ="qryPARTNUM_ALL"
    Alias ="qryPARTNUM_ALL_1"
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblPASSIVATE.partNum"
    Expression ="tblPARTNUM.partNum"
    Alias ="fixStr"
    Expression ="qryPARTNUM_ALL.partNumber"
    Alias ="maniStr"
    Expression ="qryPARTNUM_ALL_1.partNumber"
    Expression ="tblPASSIVATE.fileName"
    Expression ="tblPASSIVATE.pageNum"
    Expression ="tblPASSIVATE.fixtureNum"
    Expression ="tblPASSIVATE.maniNum"
End
Begin Joins
    LeftTable ="tblPASSIVATE"
    RightTable ="refREV"
    Expression ="tblPASSIVATE.rev = refREV.ID"
    Flag =2
    LeftTable ="tblPASSIVATE"
    RightTable ="qryPARTNUM_ALL"
    Expression ="tblPASSIVATE.fixtureNum = qryPARTNUM_ALL.uniqID"
    Flag =2
    LeftTable ="tblPASSIVATE"
    RightTable ="qryPARTNUM_ALL_1"
    Expression ="tblPASSIVATE.maniNum = qryPARTNUM_ALL_1.uniqID"
    Flag =2
    LeftTable ="tblPASSIVATE"
    RightTable ="tblPARTNUM"
    Expression ="tblPASSIVATE.partNum = tblPARTNUM.ID"
    Flag =1
End
Begin OrderBy
    Expression ="refREV.rev"
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
        dbText "Name" ="tblPASSIVATE.fileName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tblPASSIVATE.pageNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="2496"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPASSIVATE.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
        dbInteger "ColumnWidth" ="624"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPASSIVATE.fixtureNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="0"
        dbBoolean "ColumnHidden" ="-1"
    End
    Begin
        dbText "Name" ="tblPASSIVATE.maniNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
        dbInteger "ColumnWidth" ="0"
        dbBoolean "ColumnHidden" ="-1"
    End
    Begin
        dbText "Name" ="maniStr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="fixStr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1090
    Bottom =646
    Left =-1
    Top =-1
    Right =1074
    Bottom =202
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblPASSIVATE"
        Name =""
    End
    Begin
        Left =604
        Top =224
        Right =784
        Bottom =404
        Top =0
        Name ="refREV"
        Name =""
    End
    Begin
        Left =525
        Top =19
        Right =705
        Bottom =199
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
    Begin
        Left =780
        Top =15
        Right =960
        Bottom =195
        Top =0
        Name ="qryPARTNUM_ALL_1"
        Name =""
    End
    Begin
        Left =1033
        Top =29
        Right =1213
        Bottom =209
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
End
