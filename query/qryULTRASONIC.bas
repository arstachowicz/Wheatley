Operation =1
Option =0
Where ="(((tblULTRASONICS.timeDate)>=TempVars!tmpDate1 And (tblULTRASONICS.timeDate)<=Te"
    "mpVars!tmpDate2) And ((tblULTRASONICS.building) Like TempVars!tmpBuilding) And ("
    "(tblULTRASONICS.tank) Like TempVars!tmpTank))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblULTRASONICS"
    Name ="tblBUILDINGS"
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
    LeftTable ="tblULTRASONICS"
    RightTable ="tblBUILDINGS"
    Expression ="tblULTRASONICS.building = tblBUILDINGS.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblULTRASONICS.timeDate"
    Flag =0
    Expression ="tblULTRASONICS.timeHour"
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
        dbText "Name" ="tblULTRASONICS.position9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1344"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.timeHour"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1296"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.tank"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.temperature"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1872"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1248"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.position5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1332"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblULTRASONICS.building"
        dbInteger "ColumnWidth" ="1068"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =732
    Top =5
    Right =1614
    Bottom =575
    Left =0
    Top =0
    Right =0
    Bottom =0
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
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
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="tblBUILDINGS"
        Name =""
    End
End
