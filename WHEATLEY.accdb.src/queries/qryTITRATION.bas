Operation =1
Option =0
Where ="(((tblTITRATION.timeDate)>=[TempVars]![tmpDate1] And (tblTITRATION.timeDate)<=[T"
    "empVars]![tmpDate2]) AND ((tblLINES.ID) Like [TempVars]![tmpLINE]) AND ((tblCHEM"
    "ICALS.ID) Like [TempVars]![tmpChem]))"
Begin InputTables
    Name ="tblTITRATION"
    Name ="tblLINES"
    Name ="tblCHEMICALS"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblTITRATION.timeDate"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tblTITRATION.concNaOH"
    Alias ="moles"
    Expression ="[concNaOH]*[volTitrant]/1000"
    Alias ="concAcid"
    Expression ="[moles]*1000/[volSample]"
    Alias ="denAcid"
    Expression ="IIf([massSol]/[volSample]<>0,[massSol]/[volSample])"
    Alias ="cels"
    Expression ="([temp]-32)*(5/9)"
    Alias ="denH2O"
    Expression ="(999.8531+(0.0632693*[cels])+(-0.008523829*([cels]^2))+(0.00006943248*([cels]^3)"
        ")+((-0.0000003821216)*([cels]^4)))/1000"
    Alias ="specGrav"
    Expression ="IIf([denacid]<>\"\" Or [denH2O]<>\"\",Round([denAcid]/[denH2O],5))"
    Alias ="volPer"
    Expression ="[moles]*[tblCHEMICALS]![molecularWeight]/([tblCHEMICALS]![concentration]*[tblCHE"
        "MICALS]![density]*[volSample])"
    Alias ="wtPer"
    Expression ="IIf([massSol]<>0,[moles]*[tblCHEMICALS]![molecularWeight]/[massSol])"
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
    LeftTable ="tblTITRATION"
    RightTable ="tblTECHNAME"
    Expression ="tblTITRATION.techName = tblTECHNAME.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblTITRATION.timeDate"
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
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="744"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tblTITRATION.concNaOH"
        dbInteger "ColumnWidth" ="2148"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
        dbMemo "Caption" ="Conc NaOH (mol/L)"
        dbByte "DecimalPlaces" ="4"
    End
    Begin
        dbText "Name" ="moles"
        dbInteger "ColumnWidth" ="0"
        dbInteger "ColumnOrder" ="6"
        dbBoolean "ColumnHidden" ="-1"
        dbByte "DecimalPlaces" ="4"
        dbMemo "Caption" ="Moles"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="1764"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="concAcid"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Acid Concentration (M)"
        dbInteger "ColumnWidth" ="2412"
        dbBoolean "ColumnHidden" ="0"
        dbByte "DecimalPlaces" ="3"
    End
    Begin
        dbText "Name" ="denAcid"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Density of Acid (g/mL)"
        dbInteger "ColumnWidth" ="2304"
        dbBoolean "ColumnHidden" ="0"
        dbByte "DecimalPlaces" ="5"
    End
    Begin
        dbText "Name" ="denH2O"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2004"
        dbBoolean "ColumnHidden" ="-1"
    End
    Begin
        dbText "Name" ="specGrav"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2172"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Specific Gravity of Acid (g/mL)"
        dbByte "DecimalPlaces" ="5"
    End
    Begin
        dbText "Name" ="cels"
        dbInteger "ColumnWidth" ="2160"
        dbBoolean "ColumnHidden" ="-1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="volPer"
        dbMemo "Caption" ="Vol %"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="wtPer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1128"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Wt %"
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
        Left =789
        Top =72
        Right =1035
        Bottom =313
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =1098
        Top =24
        Right =1278
        Bottom =204
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
End
