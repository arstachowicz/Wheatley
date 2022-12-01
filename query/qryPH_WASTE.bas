Operation =1
Option =0
Where ="(((tblPH_WASTE.timeDate)>=[TempVars]![tmpDate1] And (tblPH_WASTE.timeDate)<=[Tem"
    "pVars]![tmpDate2]))"
Begin InputTables
    Name ="tblPH_WASTE"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblPH_WASTE.timeDate"
    Expression ="tblPH_WASTE.timeHour"
    Expression ="tblPH_WASTE.pH"
    Expression ="tblPH_WASTE.drained"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblPH_WASTE"
    Expression ="tblTECHNAME.ID = tblPH_WASTE.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblPH_WASTE.timeDate"
    Flag =0
    Expression ="tblPH_WASTE.timeHour"
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
        dbText "Name" ="tblPH_WASTE.drained"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2232"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.pH"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.timeDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPH_WASTE.timeHour"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =584
    Top =4
    Right =1289
    Bottom =458
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
        Name ="tblPH_WASTE"
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
