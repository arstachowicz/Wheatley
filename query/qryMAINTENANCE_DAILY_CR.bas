Operation =1
Option =0
Where ="(((tblMAINTENANCE_DAILY_CR.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE_"
    "DAILY_CR.timeDate)<=[TempVars]![tmpDate2]) AND ((IsNull([temperature]))=True) AN"
    "D ((IsNull([tankA]))=True) AND ((IsNull([TankB]))=True))"
Begin InputTables
    Name ="tblMAINTENANCE_DAILY_CR"
    Name ="tblTECHNAME"
    Name ="tblSHIFTS"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Expression ="tblMAINTENANCE_DAILY_CR.mats"
    Expression ="tblMAINTENANCE_DAILY_CR.passThru"
    Expression ="tblMAINTENANCE_DAILY_CR.restock"
    Expression ="tblMAINTENANCE_DAILY_CR.mopFloor"
    Expression ="tblMAINTENANCE_DAILY_CR.wipeSurfaces"
    Expression ="tblMAINTENANCE_DAILY_CR.toolsUsed"
    Expression ="tblMAINTENANCE_DAILY_CR.trash"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
    Expression ="tblSHIFTS.shift"
End
Begin Joins
    LeftTable ="tblMAINTENANCE_DAILY_CR"
    RightTable ="tblTECHNAME"
    Expression ="tblMAINTENANCE_DAILY_CR.techName = tblTECHNAME.ID"
    Flag =2
    LeftTable ="tblTECHNAME"
    RightTable ="tblSHIFTS"
    Expression ="tblTECHNAME.shift = tblSHIFTS.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
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
dbLong "DatasheetAlternateBackColor" ="16445394"
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
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[mats]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1812"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.mats"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Sticky Mats"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1728"
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
        dbInteger "ColumnWidth" ="2532"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.toolsUsed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.passThru"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1752"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.wipeSurfaces"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1632"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.trash"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1632"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.mopFloor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.restock"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1836"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSHIFTS.shift"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Shift"
    End
End
Begin
    State =0
    Left =742
    Top =15
    Right =1624
    Bottom =547
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
        Right =353
        Bottom =423
        Top =0
        Name ="tblMAINTENANCE_DAILY_CR"
        Name =""
    End
    Begin
        Left =415
        Top =11
        Right =745
        Bottom =387
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =805
        Top =15
        Right =985
        Bottom =195
        Top =0
        Name ="tblSHIFTS"
        Name =""
    End
End
