Operation =1
Option =0
Where ="(((Format([timeDate],\"yy\"))=Format(Date(),\"yy\")))"
Having ="(((Format([timedate],\"ww\"))=Format(Date(),\"ww\")))"
Begin InputTables
    Name ="tblMAINTENANCE_WEEKLY_CL"
End
Begin OutputColumns
    Alias ="WeekGrouper"
    Expression ="Format([timedate],\"ww\")"
    Alias ="MinOfsafetyShower"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CL.safetyShower)"
    Alias ="MinOfeyeFlush"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CL.eyeFlush)"
End
Begin Groups
    Expression ="Format([timedate],\"ww\")"
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
        dbText "Name" ="MinOfsafetyShower"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2208"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Safety Shower Check"
    End
    Begin
        dbText "Name" ="MinOfeyeFlush"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1908"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Eye Flush Check"
    End
    Begin
        dbText "Name" ="WeekGrouper"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Grouper"
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
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =60
        Top =15
        Right =414
        Bottom =303
        Top =0
        Name ="tblMAINTENANCE_WEEKLY_CL"
        Name =""
    End
End
