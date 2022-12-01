Operation =1
Option =16
RowCount ="50"
Begin InputTables
    Name ="tblULTRASONICS"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblULTRASONICS.timeDate"
    Expression ="tblULTRASONICS.timeHour"
    Expression ="tblULTRASONICS.building"
    Expression ="tblULTRASONICS.tank"
    Expression ="tblULTRASONICS.temperature"
    Expression ="tblULTRASONICS.position1"
    Expression ="tblULTRASONICS.position2"
    Expression ="tblULTRASONICS.position3"
    Expression ="tblULTRASONICS.position4"
    Expression ="tblULTRASONICS.position5"
    Expression ="tblULTRASONICS.position6"
    Expression ="tblULTRASONICS.position7"
    Expression ="tblULTRASONICS.position8"
    Expression ="tblULTRASONICS.position9"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblULTRASONICS"
    Expression ="tblTECHNAME.ID = tblULTRASONICS.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblULTRASONICS.timeDate"
    Flag =1
    Expression ="tblULTRASONICS.timeHour"
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
dbInteger "DatasheetFontHeight" ="12"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
Begin
    Begin
        dbText "Name" ="tblULTRASONICS.building"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position9"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position4"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.tank"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.temperature"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2025"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position6"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position7"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position8"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position3"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position5"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1455"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =2
    Top =377
    Right =1312
    Bottom =729
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
        Name ="tblULTRASONICS"
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
