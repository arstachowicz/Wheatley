Operation =1
Option =0
Having ="(((tblMAINTENANCE_DAILY_CR.timeDate)=Date()))"
Begin InputTables
    Name ="tblTECHNAME"
    Name ="tblMAINTENANCE_DAILY_CR"
End
Begin OutputColumns
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Alias ="Expr1"
    Expression ="Min(IIf(IsNull([temperature]),0,-1))"
    Alias ="Expr2"
    Expression ="Min(IIf(IsNull([tankA]),0,-1))"
    Alias ="Expr3"
    Expression ="Min(IIf(IsNull([tankB]),0,-1))"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMAINTENANCE_DAILY_CR"
    Expression ="tblTECHNAME.ID = tblMAINTENANCE_DAILY_CR.techName"
    Flag =3
End
Begin OrderBy
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    Flag =1
End
Begin Groups
    Expression ="tblMAINTENANCE_DAILY_CR.timeDate"
    GroupLevel =0
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
Begin
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.[timeDate]"
        dbInteger "ColumnWidth" ="2688"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMAINTENANCE_DAILY_CR.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1884"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Date"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Temperature"
    End
    Begin
        dbText "Name" ="Expr2"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Tank A"
    End
    Begin
        dbText "Name" ="Expr3"
        dbMemo "Caption" ="Tank B"
        dbLong "AggregateType" ="-1"
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
    Right =1074
    Bottom =312
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =398
        Top =9
        Right =658
        Bottom =264
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
    Begin
        Left =60
        Top =15
        Right =271
        Bottom =277
        Top =0
        Name ="tblMAINTENANCE_DAILY_CR"
        Name =""
    End
End
