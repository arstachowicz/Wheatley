Operation =1
Option =0
Where ="(((tblWASTEWATER.timeDate)>=[TempVars]![tmpDate1] And (tblWASTEWATER.timeDate)<="
    "[TempVars]![tmpDate2]))"
Begin InputTables
    Name ="tblWASTEWATER"
    Name ="tblLABORATORIES"
End
Begin OutputColumns
    Expression ="tblWASTEWATER.timeDate"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblWASTEWATER.lvlHg"
    Expression ="tblWASTEWATER.lvlAs"
    Expression ="tblWASTEWATER.lvlCd"
    Expression ="tblWASTEWATER.lvlCr"
    Expression ="tblWASTEWATER.lvlCu"
    Expression ="tblWASTEWATER.lvlPb"
    Expression ="tblWASTEWATER.lvlMo"
    Expression ="tblWASTEWATER.lvlNi"
    Expression ="tblWASTEWATER.lvlSe"
    Expression ="tblWASTEWATER.lvlAg"
    Expression ="tblWASTEWATER.lvlZn"
    Expression ="tblWASTEWATER.lvlTotSuspSolids"
    Expression ="tblWASTEWATER.lvlP"
    Expression ="tblWASTEWATER.lvlBOD"
End
Begin Joins
    LeftTable ="tblWASTEWATER"
    RightTable ="tblLABORATORIES"
    Expression ="tblWASTEWATER.laboratory = tblLABORATORIES.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblWASTEWATER.timeDate"
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
        dbText "Name" ="tblWASTEWATER.[lvlCd]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[timeDate]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlCr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlPb]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlHg]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlAs]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlCu]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlMo]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlNi]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlSe]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlAg]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlZn]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlTotSuspSolids]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlP]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.[lvlBOD]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlSe"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlAs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlCu"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlHg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.timeDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlCd"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlCr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlPb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlMo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlNi"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlAg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlZn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlTotSuspSolids"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblWASTEWATER.lvlBOD"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2328"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1330
    Bottom =896
    Left =-1
    Top =-1
    Right =1314
    Bottom =133
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblWASTEWATER"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =195
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
End
