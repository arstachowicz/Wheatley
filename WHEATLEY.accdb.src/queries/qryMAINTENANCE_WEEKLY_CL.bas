Operation =1
Option =0
Where ="(((tblMAINTENANCE_WEEKLY_CL.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE"
    "_WEEKLY_CL.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblMAINTENANCE_WEEKLY_CL"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_WEEKLY_CL.timeDate"
    Expression ="tblMAINTENANCE_WEEKLY_CL.safetyShower"
    Expression ="tblMAINTENANCE_WEEKLY_CL.eyeFlush"
    Expression ="tblMAINTENANCE_WEEKLY_CL.filterUS"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_WEEKLY_CL"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_WEEKLY_CL.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_WEEKLY_CL.timeDate"
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
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.[timeDate]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4128"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.[safetyShower]"
        dbInteger "ColumnWidth" ="1644"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.[eyeFlush]"
        dbInteger "ColumnWidth" ="1908"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.[filterUS]"
        dbInteger "ColumnWidth" ="1776"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4224"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.safetyShower"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1644"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.eyeFlush"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_WEEKLY_CL.filterUS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
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
    Bottom =260
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_WEEKLY_CL"
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
