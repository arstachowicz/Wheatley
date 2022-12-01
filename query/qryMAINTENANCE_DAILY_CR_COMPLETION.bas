Operation =1
Option =0
Having ="(((tblMAINTENANCE_DAILY_CR.timeDate)=Date()))"
Begin InputTables
    Name ="tblMAINTENANCE_DAILY_CR"
End
Begin OutputColumns
    Alias ="MinOfmats"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.mats)"
    Alias ="MinOfpassThru"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.passThru)"
    Alias ="MinOfrestock"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.restock)"
    Alias ="MinOfmopFloor"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.mopFloor)"
    Alias ="MinOfwipeSurfaces"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.wipeSurfaces)"
    Alias ="MinOftoolsUsed"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.toolsUsed)"
    Alias ="MinOftrash"
    Expression ="Min(tblMAINTENANCE_DAILY_CR.trash)"
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
        dbText "Name" ="MinOfrestock"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Restock Supplies"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="MinOfwipeSurfaces"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Wipe Surfaces"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="MinOftoolsUsed"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Used Tools"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="MinOfmats"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Remove Dirty Mats"
        dbInteger "ColumnWidth" ="2064"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="MinOfpassThru"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Pass Thru"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="MinOftrash"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Empty Trash"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="MinOfmopFloor"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Mop Floor"
        dbInteger "ColumnOrder" ="4"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =653
    Bottom =646
    Left =-1
    Top =-1
    Right =637
    Bottom =269
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =60
        Top =15
        Right =242
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_DAILY_CR"
        Name =""
    End
End
