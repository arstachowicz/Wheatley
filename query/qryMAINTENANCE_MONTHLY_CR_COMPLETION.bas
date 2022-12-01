Operation =1
Option =0
Having ="(((Format([timedate],\"m\"))=Format(Date(),\"m\")) AND ((Format([timedate],\"yy\""
    "))=Format(Date(),\"yy\")))"
Begin InputTables
    Name ="tblMAINTENANCE_MONTHLY_CR"
End
Begin OutputColumns
    Alias ="MinOfcleanWalls"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.cleanWalls)"
    Alias ="MinOfcleanCeilings"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.cleanCeilings)"
    Alias ="MinOfleakCal4"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.leakCal4)"
    Alias ="MinOfleakCal5"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.leakCal5)"
    Alias ="MinOfleakCal6"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.leakCal6)"
    Alias ="MinOfleakCal7"
    Expression ="Min(tblMAINTENANCE_MONTHLY_CR.leakCal7)"
End
Begin Groups
    Expression ="Format([timedate],\"m\")"
    GroupLevel =0
    Expression ="Format([timedate],\"yy\")"
    GroupLevel =0
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
        dbText "Name" ="MinOfcleanWalls"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Walls"
        dbInteger "ColumnWidth" ="1404"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfcleanCeilings"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Ceilings"
        dbInteger "ColumnWidth" ="1584"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfleakCal4"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Calibrated - LD4"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfleakCal5"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Calibrated - LD5"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfleakCal6"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Calibrated - LD6"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfleakCal7"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Calibrated - LD7"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =653
    Bottom =646
    Left =-1
    Top =-1
    Right =637
    Bottom =357
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =93
        Top =33
        Right =273
        Bottom =261
        Top =0
        Name ="tblMAINTENANCE_MONTHLY_CR"
        Name =""
    End
End
