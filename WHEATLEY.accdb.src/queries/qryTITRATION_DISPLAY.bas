Operation =1
Option =16
RowCount ="25"
Begin InputTables
    Name ="tblTITRATION"
    Name ="tblLINES"
    Name ="tblCHEMICALS"
End
Begin OutputColumns
    Expression ="tblTITRATION.timeDate"
    Expression ="tblLINES.Line"
    Expression ="tblTITRATION.concNaOH"
    Alias ="moles"
    Expression ="[concNaOH]*[volTitrant]/1000"
    Alias ="molarity"
    Expression ="Round([moles]*1000/[volSample],4)"
    Alias ="den"
    Expression ="IIf([massSol]<>0,Round([massSol]/[volSample],4),\"\")"
    Alias ="acidMass"
    Expression ="[moles]*[tblCHEMICALS].[molecularWeight]"
    Alias ="calcB"
    Expression ="[molarity]*[tblCHEMICALS].[molecularWeight]/([tblCHEMICALS].[concentration]*[tbl"
        "CHEMICALS].[density]*1000)"
    Expression ="tblTITRATION.volTitrant"
End
Begin Joins
    LeftTable ="tblTITRATION"
    RightTable ="tblLINES"
    Expression ="tblTITRATION.line = tblLINES.ID"
    Flag =2
    LeftTable ="tblTITRATION"
    RightTable ="tblCHEMICALS"
    Expression ="tblTITRATION.chemical = tblCHEMICALS.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblTITRATION.timeDate"
    Flag =1
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
        dbText "Name" ="tblTITRATION.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="744"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblTITRATION.concNaOH"
        dbInteger "ColumnWidth" ="1764"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbMemo "Caption" ="Molarity NaOH"
        dbByte "DecimalPlaces" ="4"
    End
    Begin
        dbText "Name" ="molarity"
        dbLong "AggregateType" ="-1"
        dbByte "DecimalPlaces" ="4"
        dbMemo "Caption" ="Molarity (mol/L)"
        dbInteger "ColumnWidth" ="1812"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="moles"
        dbInteger "ColumnWidth" ="0"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="-1"
        dbByte "DecimalPlaces" ="4"
        dbMemo "Caption" ="Moles"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="acidMass"
        dbInteger "ColumnWidth" ="0"
        dbInteger "ColumnOrder" ="8"
        dbBoolean "ColumnHidden" ="-1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="calcB"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Vol%"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="den"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Density (g/mL)"
        dbInteger "ColumnOrder" ="7"
        dbInteger "ColumnWidth" ="1644"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTITRATION.volTitrant"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2232"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =632
    Top =236
    Right =1392
    Bottom =663
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
        Right =284
        Bottom =348
        Top =0
        Name ="tblTITRATION"
        Name =""
    End
    Begin
        Left =397
        Top =189
        Right =577
        Bottom =369
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =637
        Top =15
        Right =883
        Bottom =256
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
End
