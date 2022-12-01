Operation =1
Option =16
RowCount ="20"
Begin InputTables
    Name ="tblPH_WASTE"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblPH_WASTE.timeDate"
    Expression ="tblPH_WASTE.timeHour"
    Expression ="tblPH_WASTE.pH"
    Expression ="tblPH_WASTE.drained"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblPH_WASTE"
    Expression ="tblTECHNAME.ID = tblPH_WASTE.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblPH_WASTE.timeDate"
    Flag =1
    Expression ="tblPH_WASTE.timeHour"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[qryPH_WASTE_DISPLAY].[timeDate] DESC"
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
        dbText "Name" ="tblPH_WASTE.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5316"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.drained"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2895"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.pH"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1032"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3690"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =2
    Top =234
    Right =1248
    Bottom =521
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
        Right =240
        Bottom =195
        Top =0
        Name ="tblPH_WASTE"
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
