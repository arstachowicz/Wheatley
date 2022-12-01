Operation =1
Option =0
Where ="(((tblMAINTENANCE_DAILY_CR.timeDate)>=#1/2/2020#) AND ((IsNull([tankB]))=False))"
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
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_DAILY_CR"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_DAILY_CR.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Flag =0
    Expression ="tblMAINTENANCE_DAILY_CR.timeHour"
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
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[timeDate]"
        dbInteger "ColumnWidth" ="2688"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[tankB]"
        dbInteger "ColumnWidth" ="3048"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[timeHour]"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[temperature]"
        dbInteger "ColumnWidth" ="2964"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[tankA]"
        dbInteger "ColumnWidth" ="2772"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.temperature"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1524"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1344"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1056"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.tankA"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="972"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.tankB"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="972"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1428"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1175
    Bottom =892
    Left =-1
    Top =-1
    Right =1155
    Bottom =327
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_DAILY_CR"
        Name =""
    End
End
