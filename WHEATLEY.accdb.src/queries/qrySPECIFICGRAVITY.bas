Operation =1
Option =0
Where ="(((tblSPECIFICGRAVITY.timeDate)>=[TempVars]![tmpDate1] And (tblSPECIFICGRAVITY.t"
    "imeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblCHEMICALS"
    Name ="tblLINES"
    Name ="tblSPECIFICGRAVITY"
End
Begin OutputColumns
    Expression ="tblSPECIFICGRAVITY.timeDate"
    Expression ="tblSPECIFICGRAVITY.timeHour"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tblSPECIFICGRAVITY.density"
    Expression ="tblSPECIFICGRAVITY.measureTemp"
    Expression ="tblSPECIFICGRAVITY.operTemp"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblLINES"
    RightTable ="tblSPECIFICGRAVITY"
    Expression ="tblLINES.ID = tblSPECIFICGRAVITY.line"
    Flag =3
    LeftTable ="tblCHEMICALS"
    RightTable ="tblSPECIFICGRAVITY"
    Expression ="tblCHEMICALS.ID = tblSPECIFICGRAVITY.chemical"
    Flag =3
    LeftTable ="tblTECHNAME"
    RightTable ="tblSPECIFICGRAVITY"
    Expression ="tblTECHNAME.ID = tblSPECIFICGRAVITY.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblSPECIFICGRAVITY.timeDate"
    Flag =0
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
Begin
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.[density]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1152"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.density"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2340"
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
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1764"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="744"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.operTemp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2784"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSPECIFICGRAVITY.measureTemp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1872"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1643
    Bottom =937
    Left =-1
    Top =-1
    Right =1627
    Bottom =-1
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =506
        Top =26
        Right =686
        Bottom =206
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =507
        Top =216
        Right =687
        Bottom =396
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =302
        Top =325
        Right =482
        Bottom =505
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblSPECIFICGRAVITY"
        Name =""
    End
End
