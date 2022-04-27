Operation =1
Option =0
Where ="(((tblMETALS_AAS.timeDate)>=TempVars!tmpDate1 And (tblMETALS_AAS.timeDate)<=Temp"
    "Vars!tmpDate2) And ((tblCHEMICALS.ID) Like TempVars!tmpCHEM) And ((tblLINES.ID) "
    "Like TempVars!tmpLINE))"
Begin InputTables
    Name ="tblMETALS_AAS"
    Name ="tblCHEMICALS"
    Name ="tblLINES"
    Name ="tblLABORATORIES"
End
Begin OutputColumns
    Expression ="tblMETALS_AAS.timeDate"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tblMETALS_AAS.perAcid"
    Alias ="perAl"
    Expression ="IIf(IsNull([tblMETALS_AAS]![aluminum]),Null,IIf([tblMETALS_AAS]![unitAl]=2,[tblM"
        "ETALS_AAS]![aluminum]/1000000,IIf(([tblMETALS_AAS]![unitAl]=1) And (IsNull([tblM"
        "ETALS_AAS]![density])=False),[tblMETALS_AAS]![aluminum]/(1000*[tblMETALS_AAS]![d"
        "ensity]),[tblMETALS_AAS]![aluminum]/100)))"
    Alias ="perCu"
    Expression ="IIf(IsNull([tblMETALS_AAS]![Copper]),Null,IIf([tblMETALS_AAS]![unitCu]=2,[tblMET"
        "ALS_AAS]![Copper]/1000000,IIf(([tblMETALS_AAS]![unitCu]=1) And (IsNull([tblMETAL"
        "S_AAS]![density])=False),[tblMETALS_AAS]![Copper]/(1000*[tblMETALS_AAS]![density"
        "]),[tblMETALS_AAS]![Copper]/100)))"
    Alias ="perCr"
    Expression ="IIf(IsNull([tblMETALS_AAS]![chromium]),Null,IIf([tblMETALS_AAS]![unitCr]=2,[tblM"
        "ETALS_AAS]![chromium]/1000000,IIf(([tblMETALS_AAS]![unitCr]=1) And (IsNull([tblM"
        "ETALS_AAS]![density])=False),[tblMETALS_AAS]![chromium]/(1000*[tblMETALS_AAS]![d"
        "ensity]),[tblMETALS_AAS]![chromium]/100)))"
    Alias ="perFe"
    Expression ="IIf(IsNull([tblMETALS_AAS]![Iron]),Null,IIf([tblMETALS_AAS]![unitFe]=2,[tblMETAL"
        "S_AAS]![Iron]/1000000,IIf(([tblMETALS_AAS]![unitFe]=1) And (IsNull([tblMETALS_AA"
        "S]![density])=False),[tblMETALS_AAS]![Iron]/(1000*[tblMETALS_AAS]![density]),[tb"
        "lMETALS_AAS]![Iron]/100)))"
    Alias ="perMo"
    Expression ="IIf(IsNull([tblMETALS_AAS]![molybdenum]),Null,IIf([tblMETALS_AAS]![unitMo]=2,[tb"
        "lMETALS_AAS]![molybdenum]/1000000,IIf(([tblMETALS_AAS]![unitMo]=1) And (IsNull(["
        "tblMETALS_AAS]![density])=False),[tblMETALS_AAS]![molybdenum]/(1000*[tblMETALS_A"
        "AS]![density]),[tblMETALS_AAS]![molybdenum]/100)))"
    Alias ="perNi"
    Expression ="IIf(IsNull([tblMETALS_AAS]![Nickel]),Null,IIf([tblMETALS_AAS]![unitNi]=2,[tblMET"
        "ALS_AAS]![Nickel]/1000000,IIf(([tblMETALS_AAS]![unitNi]=1) And (IsNull([tblMETAL"
        "S_AAS]![density])=False),[tblMETALS_AAS]![Nickel]/(1000*[tblMETALS_AAS]![density"
        "]),[tblMETALS_AAS]![Nickel]/100)))"
    Alias ="perZn"
    Expression ="IIf(IsNull([tblMETALS_AAS]![zinc]),Null,IIf([tblMETALS_AAS]![unitZn]=2,[tblMETAL"
        "S_AAS]![zinc]/1000000,IIf(([tblMETALS_AAS]![unitZn]=1) And (IsNull([tblMETALS_AA"
        "S]![density])=False),[tblMETALS_AAS]![zinc]/(1000*[tblMETALS_AAS]![density]),[tb"
        "lMETALS_AAS]![zinc]/100)))"
    Alias ="totPer"
    Expression ="Nz([perAl],0)+Nz([perCr],0)+Nz([perCu],0)+Nz([perFe],0)+Nz([perMo],0)+Nz([perNi]"
        ",0)+Nz([perZn],0)"
    Expression ="tblLABORATORIES.nameLab"
End
Begin Joins
    LeftTable ="tblMETALS_AAS"
    RightTable ="tblCHEMICALS"
    Expression ="tblMETALS_AAS.acid = tblCHEMICALS.ID"
    Flag =2
    LeftTable ="tblMETALS_AAS"
    RightTable ="tblLINES"
    Expression ="tblMETALS_AAS.line = tblLINES.ID"
    Flag =2
    LeftTable ="tblMETALS_AAS"
    RightTable ="tblLABORATORIES"
    Expression ="tblMETALS_AAS.laboratory = tblLABORATORIES.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMETALS_AAS.timeDate"
    Flag =0
    Expression ="tblCHEMICALS.chemical"
    Flag =0
    Expression ="tblLINES.Line"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "Description" ="Zinc (w/w%)"
Begin
    Begin
        dbText "Name" ="tblMETALS_AAS.timeDate"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1395"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.perAcid"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="perCr"
        dbText "Description" ="Chromium (w/w%)"
        dbInteger "ColumnWidth" ="1395"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Cr (w/w%)"
    End
    Begin
        dbText "Name" ="perCu"
        dbText "Description" ="Copper (w/w%)"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Cu (w/w%)"
    End
    Begin
        dbText "Name" ="perNi"
        dbText "Description" ="Nickel (w/w%)"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Ni (w/w%)"
    End
    Begin
        dbText "Name" ="perFe"
        dbText "Description" ="Iron (w/w%)"
        dbInteger "ColumnWidth" ="1425"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Fe (w/w%)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="perZn"
        dbText "Description" ="Iron (w/w%)"
        dbInteger "ColumnWidth" ="1425"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Zn (w/w%)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="perAl"
        dbText "Description" ="Aluminum (w/w%)"
        dbInteger "ColumnWidth" ="1395"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Al (w/w%)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="perMo"
        dbText "Description" ="Molybdenum (w/w%)"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbByte "DecimalPlaces" ="2"
        dbMemo "Caption" ="Mo (w/w%)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="totPer"
        dbText "Format" ="Percent"
        dbMemo "Caption" ="Total Metal Content (w/w%)"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1685
    Bottom =937
    Left =-1
    Top =-1
    Right =1669
    Bottom =641
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =211
        Bottom =484
        Top =0
        Name ="tblMETALS_AAS"
        Name =""
    End
    Begin
        Left =719
        Top =356
        Right =863
        Bottom =500
        Top =0
        Name ="tblLINES"
        Name =""
    End
    Begin
        Left =725
        Top =180
        Right =869
        Bottom =324
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =725
        Top =29
        Right =869
        Bottom =173
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
End
