Operation =1
Option =0
Where ="(((tblDI_WATER.timeDate)>=[TempVars]![tmpDate1] And (tblDI_WATER.timeDate)<=[Tem"
    "pVars]![tmpDate2]))"
Begin InputTables
    Name ="tblDI_WATER"
    Name ="tblLABORATORIES"
End
Begin OutputColumns
    Expression ="tblDI_WATER.timeDate"
    Expression ="tblDI_WATER.timeHour"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblDI_WATER.resistivity"
    Expression ="tblDI_WATER.toc"
    Expression ="tblDI_WATER.dissolvedOxygen"
    Expression ="tblDI_WATER.particles1"
    Expression ="tblDI_WATER.particles2"
    Expression ="tblDI_WATER.particles3"
    Expression ="tblDI_WATER.particles4"
    Expression ="tblDI_WATER.particles5"
    Expression ="tblDI_WATER.bacteria"
    Expression ="tblDI_WATER.silicaTotal"
    Expression ="tblDI_WATER.silicaDissolved"
    Expression ="tblDI_WATER.aluminum"
    Expression ="tblDI_WATER.antimony"
    Expression ="tblDI_WATER.arsenic"
    Expression ="tblDI_WATER.barium"
    Expression ="tblDI_WATER.boron"
    Expression ="tblDI_WATER.cadmium"
    Expression ="tblDI_WATER.calcium"
    Expression ="tblDI_WATER.chromium"
    Expression ="tblDI_WATER.copper"
    Expression ="tblDI_WATER.iron"
    Expression ="tblDI_WATER.lead"
    Expression ="tblDI_WATER.lithium"
    Expression ="tblDI_WATER.magnesium"
    Expression ="tblDI_WATER.manganese"
    Expression ="tblDI_WATER.nickel"
    Expression ="tblDI_WATER.potassium"
    Expression ="tblDI_WATER.sodium"
    Expression ="tblDI_WATER.tin"
    Expression ="tblDI_WATER.titanium"
    Expression ="tblDI_WATER.vanadium"
    Expression ="tblDI_WATER.zinc"
End
Begin Joins
    LeftTable ="tblLABORATORIES"
    RightTable ="tblDI_WATER"
    Expression ="tblLABORATORIES.ID = tblDI_WATER.laboratory"
    Flag =3
End
Begin OrderBy
    Expression ="tblDI_WATER.timeDate"
    Flag =0
    Expression ="tblDI_WATER.timeHour"
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
        dbText "Name" ="tblDI_WATER.silicaDissolved"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.particles3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.resistivity"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.zinc"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.cadmium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.particles4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.toc"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.dissolvedOxygen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.timeDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.arsenic"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.particles1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.tin"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.magnesium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.bacteria"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.timeHour"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.manganese"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.silicaTotal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.particles2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.antimony"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.particles5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.aluminum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.titanium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.barium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.boron"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.calcium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.chromium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.copper"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.iron"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.lead"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.sodium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.lithium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.nickel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.potassium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDI_WATER.vanadium"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =724
    Bottom =646
    Left =-1
    Top =-1
    Right =708
    Bottom =-1
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblDI_WATER"
        Name =""
    End
    Begin
        Left =357
        Top =14
        Right =537
        Bottom =194
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
End
