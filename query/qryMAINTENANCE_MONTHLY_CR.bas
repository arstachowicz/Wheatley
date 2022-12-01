Operation =1
Option =16
RowCount ="15"
Where ="(((tblMAINTENANCE_MONTHLY_CR.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANC"
    "E_MONTHLY_CR.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblMAINTENANCE_MONTHLY_CR"
    Name ="tblTECHNAME"
    Name ="tblSHIFTS"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_MONTHLY_CR.timeDate"
    Expression ="tblMAINTENANCE_MONTHLY_CR.timeHour"
    Expression ="tblMAINTENANCE_MONTHLY_CR.cleanWalls"
    Expression ="tblMAINTENANCE_MONTHLY_CR.cleanCeilings"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
    Expression ="tblSHIFTS.shift"
    Expression ="tblMAINTENANCE_MONTHLY_CR.leakCal4"
    Expression ="tblMAINTENANCE_MONTHLY_CR.leakCal5"
    Expression ="tblMAINTENANCE_MONTHLY_CR.leakCal6"
    Expression ="tblMAINTENANCE_MONTHLY_CR.leakCal7"
    Alias ="Factor"
    Expression ="IIf(IsNull([calVal])=False,[calVal],IIf(IsNull([standVal])=False,[standval]/([op"
        "enVal]-[closedVal]),\"\"))"
End
Begin Joins
    LeftTable ="tblMAINTENANCE_MONTHLY_CR"
    RightTable ="tblTECHNAME"
    Expression ="tblMAINTENANCE_MONTHLY_CR.techName = tblTECHNAME.ID"
    Flag =2
    LeftTable ="tblTECHNAME"
    RightTable ="tblSHIFTS"
    Expression ="tblTECHNAME.shift = tblSHIFTS.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMAINTENANCE_MONTHLY_CR.timeDate"
    Flag =1
    Expression ="tblMAINTENANCE_MONTHLY_CR.timeHour"
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
        dbText "Name" ="[tblMAINTENANCE_MONTHLY_CR].[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_MONTHLY_CR].[timeHour]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_MONTHLY_CR].[cleanWalls]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_MONTHLY_CR].[cleanCeilings]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.[timeHour]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.[timeDate]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2196"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.[cleanWalls]"
        dbInteger "ColumnWidth" ="1848"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.[cleanCeilings]"
        dbInteger "ColumnWidth" ="1584"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2052"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2496"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.cleanWalls"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.cleanCeilings"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1884"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2916"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="tblSHIFTS.shift"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Shift"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.leakCal5"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.leakCal6"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.leakCal4"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CR.leakCal7"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Factor"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
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
    Bottom =487
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =381
        Top =0
        Name ="tblMAINTENANCE_MONTHLY_CR"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =266
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblSHIFTS"
        Name =""
    End
End
