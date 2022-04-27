Operation =1
Option =0
Having ="(((tblMAINTENANCE_DAILY_CL.timeDate)=Date()))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblMAINTENANCE_DAILY_CL"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
    Alias ="MaxOfresistanceMeter"
    Expression ="Max(tblMAINTENANCE_DAILY_CL.resistanceMeter)"
    Alias ="MaxOfwaterMeter_CR"
    Expression ="Max(tblMAINTENANCE_DAILY_CL.waterMeter_CR)"
    Alias ="AvgOfwaterMeter_CL"
    Expression ="Avg(tblMAINTENANCE_DAILY_CL.waterMeter_CL)"
    Alias ="MinOfuvLight"
    Expression ="Min(tblMAINTENANCE_DAILY_CL.uvLight)"
    Alias ="MinOfcleanFloor"
    Expression ="Min(tblMAINTENANCE_DAILY_CL.cleanFloor)"
    Alias ="MinOfusCleaned"
    Expression ="Min(tblMAINTENANCE_DAILY_CL.usCleaned)"
    Alias ="MinOfusRefilled"
    Expression ="Min(tblMAINTENANCE_DAILY_CL.usRefilled)"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_DAILY_CL"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_DAILY_CL.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
    Flag =1
End
Begin Groups
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
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
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.timeDate"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Date"
    End
    Begin
        dbText "Name" ="MinOfuvLight"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="UV Light Check"
    End
    Begin
        dbText "Name" ="MinOfcleanFloor"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Floor"
    End
    Begin
        dbText "Name" ="AvgOfwaterMeter_CL"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2292"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Water Meter Reading (CL)"
    End
    Begin
        dbText "Name" ="MaxOfwaterMeter_CR"
        dbInteger "ColumnWidth" ="2316"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Water Meter Reading (CR)"
    End
    Begin
        dbText "Name" ="MaxOfresistanceMeter"
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Resistance Meter"
    End
    Begin
        dbText "Name" ="MinOfusCleaned"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Ultrasonics Cleaned"
        dbInteger "ColumnWidth" ="2124"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfusRefilled"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Ultrasonics Refilled"
        dbInteger "ColumnWidth" ="2076"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =724
    Bottom =646
    Left =-1
    Top =-1
    Right =708
    Bottom =243
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =395
        Top =24
        Right =575
        Bottom =204
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =319
        Bottom =332
        Top =0
        Name ="tblMAINTENANCE_DAILY_CL"
        Name =""
    End
End
