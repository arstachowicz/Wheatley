Operation =1
Option =0
Where ="(((tblMAINTENANCE_WEEKLY_CR.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE"
    "_WEEKLY_CR.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblMAINTENANCE_WEEKLY_CR"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_WEEKLY_CR.timeDate"
    Expression ="tblMAINTENANCE_WEEKLY_CR.timeHour"
    Expression ="tblMAINTENANCE_WEEKLY_CR.chasewaySweep"
    Expression ="tblMAINTENANCE_WEEKLY_CR.gowningSweep"
    Expression ="tblMAINTENANCE_WEEKLY_CR.laundry"
    Expression ="tblMAINTENANCE_WEEKLY_CR.mopDrying"
    Expression ="tblMAINTENANCE_WEEKLY_CR.stakingToolsClean"
    Expression ="tblMAINTENANCE_WEEKLY_CR.outsideLedges"
    Expression ="tblMAINTENANCE_WEEKLY_CR.mats"
    Expression ="tblMAINTENANCE_WEEKLY_CR.handTools"
    Expression ="tblMAINTENANCE_WEEKLY_CR.wipeCans"
    Expression ="tblMAINTENANCE_WEEKLY_CR.wipeBenches"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblMAINTENANCE_WEEKLY_CR"
    RightTable ="tblTECHNAME"
    Expression ="tblMAINTENANCE_WEEKLY_CR.techName = tblTECHNAME.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMAINTENANCE_WEEKLY_CR.timeDate"
    Flag =0
    Expression ="tblMAINTENANCE_WEEKLY_CR.timeHour"
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
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.timeDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.timeHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.chasewaySweep"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2388"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.stakingToolsClean"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.gowningSweep"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.laundry"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.mopDrying"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.outsideLedges"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.handTools"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.wipeBenches"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.mats"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CR.wipeCans"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =584
    Top =4
    Right =1289
    Bottom =458
    Left =0
    Top =0
    Right =0
    Bottom =0
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
        Right =237
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_WEEKLY_CR"
        Name =""
    End
End
