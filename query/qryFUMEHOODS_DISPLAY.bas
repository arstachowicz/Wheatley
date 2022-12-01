Operation =1
Option =16
RowCount ="30"
Begin InputTables
    Name ="tblFUMEHOODS"
    Name ="tblTECHNAME"
    Name ="tblLINES"
    Name ="tblCHEMICALS"
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
    LeftTable ="tblTECHNAME"
    RightTable ="tblFUMEHOODS"
    Expression ="tblTECHNAME.ID = tblFUMEHOODS.techName"
    Flag =3
    LeftTable ="tblLINES"
    RightTable ="tblFUMEHOODS"
    Expression ="tblLINES.ID = tblFUMEHOODS.line"
    Flag =3
    LeftTable ="tblCHEMICALS"
    RightTable ="tblFUMEHOODS"
    Expression ="tblCHEMICALS.ID = tblFUMEHOODS.chemical"
    Flag =3
End
Begin OrderBy
    Expression ="tblFUMEHOODS.timeDate"
    Flag =1
    Expression ="tblFUMEHOODS.timeHour"
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
        dbText "Name" ="tblFUMEHOODS.[timeHour]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2544"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.[velocity]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2028"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2388"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblFUMEHOODS.velocity"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3870"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =2
    Top =286
    Right =1304
    Bottom =717
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
        Right =253
        Bottom =243
        Top =0
        Name ="tblFUMEHOODS"
        Name =""
    End
    Begin
        Left =567
        Top =30
        Right =838
        Bottom =286
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =499
        Top =197
        Right =679
        Bottom =377
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =898
        Top =15
        Right =1078
        Bottom =195
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
End
