Operation =1
Option =0
Where ="(((tblSURFACE_ANALYSIS_IC.timeDate)>=[TempVars]![tmpDate1] And (tblSURFACE_ANALY"
    "SIS_IC.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblLABORATORIES"
    Name ="tblSURFACE_ANALYSIS_IC"
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblSURFACE_ANALYSIS_IC.timeDate"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblPARTNUM.partNum"
    Alias ="sa"
    Expression ="Nz([tblPARTNUM].[surAreaExt],0)+Nz([tblPARTNUM].[surAreaInt],0)"
    Expression ="tblSURFACE_ANALYSIS_IC.[rnd]"
    Expression ="tblSURFACE_ANALYSIS_IC.experiment"
    Expression ="tblSURFACE_ANALYSIS_IC.notes"
    Alias ="ppbCl"
    Expression ="[chloride]*1000/[extrVol]"
    Alias ="ppbBr"
    Expression ="[bromide]*1000/[extrVol]"
    Alias ="ppbF"
    Expression ="[fluoride]*1000/[extrVol]"
    Alias ="ppbNO3"
    Expression ="[nitrate]*1000/[extrVol]"
    Alias ="ppbNO2"
    Expression ="[nitrite]*1000/[extrVol]"
    Alias ="ppbPO4"
    Expression ="[phosphate]*1000/[extrVol]"
    Alias ="ppbSO4"
    Expression ="[sulfate]*1000/[extrVol]"
    Alias ="ppbLi"
    Expression ="[lithium]*1000/[extrVol]"
    Alias ="ppbNa"
    Expression ="[sodium]*1000/[extrVol]"
    Alias ="ppbNH4"
    Expression ="[ammonium]*1000/[extrVol]"
    Alias ="ppbK"
    Expression ="[potassium]*1000/[extrVol]"
    Alias ="ppbMg"
    Expression ="[magnesium]*1000/[extrVol]"
    Alias ="ppbCa"
    Expression ="[calcium]*1000/[extrVol]"
End
Begin Joins
    LeftTable ="tblLABORATORIES"
    RightTable ="tblSURFACE_ANALYSIS_IC"
    Expression ="tblLABORATORIES.ID = tblSURFACE_ANALYSIS_IC.laboratory"
    Flag =3
    LeftTable ="tblSURFACE_ANALYSIS_IC"
    RightTable ="tblPARTNUM"
    Expression ="tblSURFACE_ANALYSIS_IC.partNum = tblPARTNUM.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblSURFACE_ANALYSIS_IC.timeDate"
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
        dbText "Name" ="tblSURFACE_ANALYSIS_IC.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1920"
        dbInteger "ColumnOrder" ="20"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="sa"
        dbInteger "ColumnWidth" ="1644"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Total Surface Area (sq in)"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="ppbBr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
        dbMemo "Caption" ="Bromide (ppb)"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ppbCl"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
        dbMemo "Caption" ="Chlorine (ppb)"
        dbInteger "ColumnWidth" ="1608"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ppbF"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
        dbMemo "Caption" ="Fluoride (ppb)"
        dbInteger "ColumnWidth" ="1584"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ppbNO3"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
        dbMemo "Caption" ="Nitrate (ppb)"
    End
    Begin
        dbText "Name" ="ppbNO2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
        dbMemo "Caption" ="Nitrite (ppb)"
    End
    Begin
        dbText "Name" ="ppbPO4"
        dbInteger "ColumnOrder" ="12"
        dbMemo "Caption" ="Phosphate (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbSO4"
        dbInteger "ColumnOrder" ="13"
        dbMemo "Caption" ="Sulfate (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbLi"
        dbInteger "ColumnOrder" ="14"
        dbMemo "Caption" ="Lithium (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbNa"
        dbInteger "ColumnOrder" ="19"
        dbMemo "Caption" ="Sodium (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbNH4"
        dbInteger "ColumnOrder" ="15"
        dbMemo "Caption" ="Ammonium (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbK"
        dbInteger "ColumnOrder" ="18"
        dbMemo "Caption" ="Potassium (ppb)"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ppbMg"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
        dbMemo "Caption" ="Magnesium (ppb)"
    End
    Begin
        dbText "Name" ="ppbCa"
        dbMemo "Caption" ="Calcium (ppb)"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_IC.[rnd]"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_IC.experiment"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_IC.notes"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
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
        Left =537
        Top =210
        Right =717
        Bottom =390
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =275
        Bottom =305
        Top =0
        Name ="tblSURFACE_ANALYSIS_IC"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
End
