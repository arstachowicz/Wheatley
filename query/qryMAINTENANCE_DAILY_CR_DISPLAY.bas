Operation =1
Option =16
RowCount ="25"
Where ="(((tblMAINTENANCE_DAILY_CR.temperature)<>0))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblMAINTENANCE_DAILY_CR"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Expression ="tblMAINTENANCE_DAILY_CR.timeHour"
    Expression ="tblMAINTENANCE_DAILY_CR.temperature"
    Expression ="tblMAINTENANCE_DAILY_CR.tankA"
    Expression ="tblMAINTENANCE_DAILY_CR.tankB"
    Expression ="tblTECHNAME.firstName"
End
Begin Joins
    LeftTable ="tblMAINTENANCE_DAILY_CR"
    RightTable ="tblTECHNAME"
    Expression ="tblMAINTENANCE_DAILY_CR.techName = tblTECHNAME.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Flag =1
    Expression ="tblMAINTENANCE_DAILY_CR.timeHour"
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
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2412"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.temperature"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2220"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2484"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2484"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.tankA"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2412"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.tankB"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =10
    Top =321
    Right =1180
    Bottom =686
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =588
        Top =17
        Right =908
        Bottom =272
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =399
        Bottom =257
        Top =0
        Name ="tblMAINTENANCE_DAILY_CR"
        Name =""
    End
End
