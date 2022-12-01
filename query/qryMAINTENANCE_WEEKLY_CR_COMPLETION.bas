Operation =1
Option =0
Where ="(((Format([timedate],\"yy\"))=Format(Date(),\"yy\")))"
Having ="(((Format([timedate],\"ww\"))=Format(Date(),\"ww\")))"
Begin InputTables
    Name ="tblMAINTENANCE_WEEKLY_CR"
End
Begin OutputColumns
    Alias ="WeekGrouper"
    Expression ="Format([timedate],\"ww\")"
    Alias ="LastOftimeDate"
    Expression ="Last(tblMAINTENANCE_WEEKLY_CR.timeDate)"
    Alias ="MinOfchasewaySweep"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.chasewaySweep)"
    Alias ="MinOfgowningSweep"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.gowningSweep)"
    Alias ="MinOflaundry"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.laundry)"
    Alias ="MinOfmopDrying"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.mopDrying)"
    Alias ="MinOfstakingToolsClean"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.stakingToolsClean)"
    Alias ="MinOfoutsideLedges"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.outsideLedges)"
    Alias ="MinOfmats"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.mats)"
    Alias ="MinOfhandTools"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.handTools)"
    Alias ="MinOfwipeCans"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.wipeCans)"
    Alias ="MinOfwipeBenches"
    Expression ="Min(tblMAINTENANCE_WEEKLY_CR.wipeBenches)"
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
        dbText "Name" ="MinOfchasewaySweep"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Sweep/Mop Chaseway"
    End
    Begin
        dbText "Name" ="MinOfgowningSweep"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Sweep/Mop Gowning Room"
    End
    Begin
        dbText "Name" ="MinOflaundry"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Laundry"
    End
    Begin
        dbText "Name" ="MinOfmopDrying"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Mop Drying Area"
    End
    Begin
        dbText "Name" ="MinOfstakingToolsClean"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean/Wipe Staking Tools"
    End
    Begin
        dbText "Name" ="MinOfoutsideLedges"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Wipe/Clean Outside Ledges"
    End
    Begin
        dbText "Name" ="MinOfmats"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Change Mats"
    End
    Begin
        dbText "Name" ="MinOfhandTools"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Clean Hand Tools"
    End
    Begin
        dbText "Name" ="MinOfwipeCans"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Wipe Trashcans"
    End
    Begin
        dbText "Name" ="MinOfwipeBenches"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Wipe Benches"
    End
    Begin
        dbText "Name" ="WeekGrouper"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Grouper"
    End
    Begin
        dbText "Name" ="LastOftimeDate"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Date"
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
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblMAINTENANCE_WEEKLY_CR"
        Name =""
    End
End
