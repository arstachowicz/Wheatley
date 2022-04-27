Operation =1
Option =0
Where ="(((tblSURFACE_ANALYSIS_XPS.timeDate)>=[TempVars]![tmpDate1] And (tblSURFACE_ANAL"
    "YSIS_XPS.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblSURFACE_ANALYSIS_XPS"
    Name ="tblPARTNUM"
    Name ="tblLABORATORIES"
End
Begin OutputColumns
    Expression ="tblSURFACE_ANALYSIS_XPS.timeDate"
    Expression ="tblSURFACE_ANALYSIS_XPS.[rnd]"
    Expression ="tblPARTNUM.partNum"
    Expression ="tblSURFACE_ANALYSIS_XPS.Modifiers"
    Expression ="tblSURFACE_ANALYSIS_XPS.CrFe"
    Expression ="tblSURFACE_ANALYSIS_XPS.CrOxFeOx"
    Expression ="tblSURFACE_ANALYSIS_XPS.oxideThick"
    Expression ="tblSURFACE_ANALYSIS_XPS.aluminum"
    Expression ="tblSURFACE_ANALYSIS_XPS.calcium"
    Expression ="tblSURFACE_ANALYSIS_XPS.carbon"
    Expression ="tblSURFACE_ANALYSIS_XPS.chlorine"
    Expression ="tblSURFACE_ANALYSIS_XPS.chromium"
    Expression ="tblSURFACE_ANALYSIS_XPS.copper"
    Expression ="tblSURFACE_ANALYSIS_XPS.fluorine"
    Expression ="tblSURFACE_ANALYSIS_XPS.iron"
    Expression ="tblSURFACE_ANALYSIS_XPS.magnesium"
    Expression ="tblSURFACE_ANALYSIS_XPS.manganese"
    Expression ="tblSURFACE_ANALYSIS_XPS.molybdenum"
    Expression ="tblSURFACE_ANALYSIS_XPS.nickel"
    Expression ="tblSURFACE_ANALYSIS_XPS.nitrogen"
    Expression ="tblSURFACE_ANALYSIS_XPS.oxygen"
    Expression ="tblSURFACE_ANALYSIS_XPS.phosphorous"
    Expression ="tblSURFACE_ANALYSIS_XPS.silicon"
    Expression ="tblSURFACE_ANALYSIS_XPS.sodium"
    Expression ="tblSURFACE_ANALYSIS_XPS.sulfur"
    Expression ="tblSURFACE_ANALYSIS_XPS.zinc"
    Expression ="tblSURFACE_ANALYSIS_XPS.others"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblSURFACE_ANALYSIS_XPS.Notes"
End
Begin Joins
    LeftTable ="tblSURFACE_ANALYSIS_XPS"
    RightTable ="tblPARTNUM"
    Expression ="tblSURFACE_ANALYSIS_XPS.testPart = tblPARTNUM.ID"
    Flag =2
    LeftTable ="tblSURFACE_ANALYSIS_XPS"
    RightTable ="tblLABORATORIES"
    Expression ="tblSURFACE_ANALYSIS_XPS.laboratory = tblLABORATORIES.ID"
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
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.[rnd]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.Modifiers"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.CrFe"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.Notes"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="28"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.silicon"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.magnesium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.CrOxFeOx"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.manganese"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.oxideThick"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.copper"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.aluminum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.nickel"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.fluorine"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.calcium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.nitrogen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.iron"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.carbon"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.oxygen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.chlorine"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.others"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="27"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.phosphorous"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.chromium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.molybdenum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.sodium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.sulfur"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="tblSURFACE_ANALYSIS_XPS.zinc"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="29"
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
        Right =240
        Bottom =195
        Top =0
        Name ="tblSURFACE_ANALYSIS_XPS"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
End
