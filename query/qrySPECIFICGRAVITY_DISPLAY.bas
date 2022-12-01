Operation =1
Option =16
RowCount ="30"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblSPECIFICGRAVITY"
    Name ="tblCHEMICALS"
    Name ="tblLINES"
End
Begin OutputColumns
    Expression ="tblSPECIFICGRAVITY.timeDate"
    Expression ="tblSPECIFICGRAVITY.timeHour"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tblSPECIFICGRAVITY.operTemp"
    Expression ="tblSPECIFICGRAVITY.measureTemp"
    Expression ="tblSPECIFICGRAVITY.density"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblSPECIFICGRAVITY"
    Expression ="tblTECHNAME.ID = tblSPECIFICGRAVITY.techName"
    Flag =3
    LeftTable ="tblSPECIFICGRAVITY"
    RightTable ="tblCHEMICALS"
    Expression ="tblSPECIFICGRAVITY.chemical = tblCHEMICALS.ID"
    Flag =2
    LeftTable ="tblSPECIFICGRAVITY"
    RightTable ="tblLINES"
    Expression ="tblSPECIFICGRAVITY.line = tblLINES.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblSPECIFICGRAVITY.timeDate"
    Flag =1
    Expression ="tblCHEMICALS.chemical"
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
        dbText "Name" ="tblSPECIFICGRAVITY.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2016"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.density"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2715"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.[measureTemp]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.operTemp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Op. Temp"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.measureTemp"
        dbMemo "Caption" ="Meas. Temp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =2
    Top =311
    Right =1329
    Bottom =725
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =377
        Top =15
        Right =557
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =317
        Bottom =258
        Top =0
        Name ="tblSPECIFICGRAVITY"
        Name =""
    End
    Begin
        Left =617
        Top =15
        Right =797
        Bottom =195
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =857
        Top =15
        Right =1037
        Bottom =195
        Top =0
        Name ="tblLINES"
        Name =""
    End
End
