Operation =1
Option =0
Where ="(((tblMAINTENANCE_MONTHLY_CL.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANC"
    "E_MONTHLY_CL.timeDate)<=[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblMAINTENANCE_MONTHLY_CL"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_MONTHLY_CL.timeDate"
    Expression ="tblMAINTENANCE_MONTHLY_CL.ultrasonicFilter"
    Expression ="tblMAINTENANCE_MONTHLY_CL.plantNum"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_MONTHLY_CL"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_MONTHLY_CL.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_MONTHLY_CL.timeDate"
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
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CL.ultrasonicFilter"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="2196"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CL.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5976"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_MONTHLY_CL.plantNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="2916"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4236"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3168"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1090
    Bottom =646
    Left =-1
    Top =-1
    Right =637
    Bottom =214
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_MONTHLY_CL"
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
