Operation =1
Option =0
Where ="(((tblSURFACE_ANALYSIS_AUGER.timeDate)>=[TempVars]![tmpDate1] And (tblSURFACE_AN"
    "ALYSIS_AUGER.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblSURFACE_ANALYSIS_AUGER"
    Name ="tblLABORATORIES"
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblSURFACE_ANALYSIS_AUGER.timeDate"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblSURFACE_ANALYSIS_AUGER.[rnd]"
    Expression ="tblSURFACE_ANALYSIS_AUGER.modifications"
    Expression ="tblPARTNUM.partNum"
    Expression ="tblSURFACE_ANALYSIS_AUGER.carbon"
    Expression ="tblSURFACE_ANALYSIS_AUGER.calcium"
    Expression ="tblSURFACE_ANALYSIS_AUGER.chlorine"
    Expression ="tblSURFACE_ANALYSIS_AUGER.chromium"
    Expression ="tblSURFACE_ANALYSIS_AUGER.copper"
    Expression ="tblSURFACE_ANALYSIS_AUGER.iron"
    Expression ="tblSURFACE_ANALYSIS_AUGER.magnesium"
    Expression ="tblSURFACE_ANALYSIS_AUGER.nickel"
    Expression ="tblSURFACE_ANALYSIS_AUGER.nitrogen"
    Expression ="tblSURFACE_ANALYSIS_AUGER.oxygen"
    Expression ="tblSURFACE_ANALYSIS_AUGER.phosphorous"
    Expression ="tblSURFACE_ANALYSIS_AUGER.potassium"
    Expression ="tblSURFACE_ANALYSIS_AUGER.silicon"
    Expression ="tblSURFACE_ANALYSIS_AUGER.sodium"
    Expression ="tblSURFACE_ANALYSIS_AUGER.sulfur"
    Expression ="tblSURFACE_ANALYSIS_AUGER.zinc"
    Expression ="tblSURFACE_ANALYSIS_AUGER.oxideThick"
    Expression ="tblSURFACE_ANALYSIS_AUGER.correctedThick"
    Expression ="tblSURFACE_ANALYSIS_AUGER.crFeRatio"
    Expression ="tblSURFACE_ANALYSIS_AUGER.maxCrFe"
    Expression ="tblSURFACE_ANALYSIS_AUGER.carbLayer"
    Expression ="tblSURFACE_ANALYSIS_AUGER.ironLayer"
End
Begin Joins
    LeftTable ="tblSURFACE_ANALYSIS_AUGER"
    RightTable ="tblLABORATORIES"
    Expression ="tblSURFACE_ANALYSIS_AUGER.laboratory = tblLABORATORIES.ID"
    Flag =2
    LeftTable ="tblSURFACE_ANALYSIS_AUGER"
    RightTable ="tblPARTNUM"
    Expression ="tblSURFACE_ANALYSIS_AUGER.testPart = tblPARTNUM.ID"
    Flag =2
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
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1356"
        dbInteger "ColumnOrder" ="27"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.[rnd]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.chlorine"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.modifications"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.chromium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.carbon"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.calcium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.copper"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.iron"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.sulfur"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.maxCrFe"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.carbLayer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.ironLayer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.magnesium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.nickel"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.nitrogen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.oxygen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.phosphorous"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.potassium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.silicon"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.sodium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.zinc"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.oxideThick"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.correctedThick"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_AUGER.crFeRatio"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
End
Begin
    State =0
    Left =584
    Top =4
    Right =1600
    Bottom =733
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
        Right =424
        Bottom =298
        Top =0
        Name ="tblSURFACE_ANALYSIS_AUGER"
        Name =""
    End
    Begin
        Left =484
        Top =15
        Right =664
        Bottom =195
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
    Begin
        Left =724
        Top =15
        Right =904
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
End
