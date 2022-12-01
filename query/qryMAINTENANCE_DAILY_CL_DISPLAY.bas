Operation =1
Option =16
RowCount ="15"
Begin InputTables
    Name ="tblMAINTENANCE_DAILY_CL"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
    Expression ="tblMAINTENANCE_DAILY_CL.timeHour"
    Expression ="tblMAINTENANCE_DAILY_CL.resistanceMeter"
    Expression ="tblMAINTENANCE_DAILY_CL.waterMeter_CR"
    Expression ="tblMAINTENANCE_DAILY_CL.waterMeter_CL"
    Expression ="tblMAINTENANCE_DAILY_CL.uvLight"
    Expression ="tblMAINTENANCE_DAILY_CL.cleanFloor"
    Expression ="tblMAINTENANCE_DAILY_CL.usCleaned"
    Expression ="tblMAINTENANCE_DAILY_CL.usRefilled"
    Expression ="tblTECHNAME.firstName"
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
    Expression ="tblMAINTENANCE_DAILY_CL.timeHour"
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
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="14"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
Begin
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1692"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.cleanFloor"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.resistanceMeter"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2745"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.waterMeter_CR"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.waterMeter_CL"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.uvLight"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2250"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.usRefilled"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="U/S Refilled"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.usCleaned"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="U/S Cleaned"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =8
    Top =415
    Right =1480
    Bottom =704
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =239
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_DAILY_CL"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
End
