Operation =1
Option =0
Where ="(((tblMAINTENANCE_DAILY_CL.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE_"
    "DAILY_CL.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblMAINTENANCE_DAILY_CL"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
    Expression ="tblMAINTENANCE_DAILY_CL.resistanceMeter"
    Expression ="tblMAINTENANCE_DAILY_CL.waterMeter_CR"
    Expression ="tblMAINTENANCE_DAILY_CL.waterMeter_CL"
    Expression ="tblMAINTENANCE_DAILY_CL.uvLight"
    Expression ="tblMAINTENANCE_DAILY_CL.cleanFloor"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
    Expression ="tblMAINTENANCE_DAILY_CL.usRefilled"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_DAILY_CL"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_DAILY_CL.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CL.timeDate"
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
dbLong "DatasheetBackColor" ="16777215"
dbLong "DatasheetBackColor12" ="-2147483643"
dbLong "DatasheetAlternateBackColor" ="16511450"
dbLong "BackThemeColorIndex" ="-1"
dbSingle "BackTint" ="100"
dbSingle "BackShade" ="100"
dbLong "BorderThemeColorIndex" ="-1"
dbSingle "BorderTint" ="100"
dbSingle "BorderShade" ="100"
dbLong "ThemeFontIndex" ="-1"
dbLong "ForeThemeColorIndex" ="-1"
dbSingle "ForeTint" ="100"
dbSingle "ForeShade" ="100"
dbLong "AlternateBackThemeColorIndex" ="4"
dbSingle "AlternateBackTint" ="20"
dbSingle "AlternateBackShade" ="100"
Begin
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[timeDate]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3012"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[resistanceMeter]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2832"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[waterMeter_CR]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[waterMeter_CL]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2412"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[uvLight]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.[cleanFloor]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1392"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.resistanceMeter"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1908"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.waterMeter_CR"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2352"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.waterMeter_CL"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2328"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.uvLight"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1116"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.cleanFloor"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[resistanceMeter]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[waterMeter_CR]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[waterMeter_CL]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[uvLight]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblMAINTENANCE_DAILY_CL].[cleanFloor]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblTECHNAME].[firstName]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblTECHNAME].[lastName]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CL.usRefilled"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1492
    Bottom =937
    Left =-1
    Top =-1
    Right =1476
    Bottom =331
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =290
        Top =0
        Name ="tblMAINTENANCE_DAILY_CL"
        Name =""
    End
    Begin
        Left =461
        Top =37
        Right =641
        Bottom =217
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
End
