Operation =1
Option =0
Where ="(((tblFUMEHOODS.timeDate)>=TempVars!tmpDate1 And (tblFUMEHOODS.timeDate)<=TempVa"
    "rs!tmpDate2) And ((tblLINES.ID) Like TempVars!tmpLINE) And ((tblCHEMICALS.ID) Li"
    "ke TempVars!tmpCHEM))"
Begin InputTables
    Name ="tblCHEMICALS"
    Name ="tblTECHNAME"
    Name ="tblLINES"
    Name ="tblFUMEHOODS"
End
Begin OutputColumns
    Expression ="tblFUMEHOODS.timeDate"
    Expression ="tblFUMEHOODS.timeHour"
    Expression ="tblLINES.Line"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblFUMEHOODS.velocity"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblLINES"
    RightTable ="tblFUMEHOODS"
    Expression ="tblLINES.ID = tblFUMEHOODS.line"
    Flag =3
    LeftTable ="tblTECHNAME"
    RightTable ="tblFUMEHOODS"
    Expression ="tblTECHNAME.ID = tblFUMEHOODS.techName"
    Flag =3
    LeftTable ="tblCHEMICALS"
    RightTable ="tblFUMEHOODS"
    Expression ="tblCHEMICALS.ID = tblFUMEHOODS.chemical"
    Flag =3
End
Begin OrderBy
    Expression ="tblFUMEHOODS.timeDate"
    Flag =0
    Expression ="tblFUMEHOODS.timeHour"
    Flag =0
    Expression ="tblLINES.Line"
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
        dbText "Name" ="tblFUMEHOODS.[velocity]"
        dbInteger "ColumnWidth" ="2328"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.[timeDate]"
        dbInteger "ColumnWidth" ="6096"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1764"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.velocity"
        dbInteger "ColumnWidth" ="1812"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.timeDate"
        dbInteger "ColumnWidth" ="1368"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.timeHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbInteger "ColumnWidth" ="744"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =732
    Top =5
    Right =1614
    Bottom =575
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =598
        Top =187
        Right =778
        Bottom =367
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =382
        Top =316
        Right =562
        Bottom =496
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =818
        Top =42
        Right =998
        Bottom =222
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =73
        Top =46
        Right =253
        Bottom =226
        Top =0
        Name ="tblFUMEHOODS"
        Name =""
    End
End
