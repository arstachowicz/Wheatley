Operation =1
Option =0
Where ="(((tblSUPERVISORS.ID)=5))"
Begin InputTables
    Name ="tblSUPERVISORS"
    Name ="tblTASKLIST"
End
Begin OutputColumns
    Expression ="tblSUPERVISORS.ID"
    Expression ="tblTASKLIST.ID"
End
Begin Joins
    LeftTable ="tblSUPERVISORS"
    RightTable ="tblTASKLIST"
    Expression ="tblSUPERVISORS.ID = tblTASKLIST.supervisorResponsible.Value"
    Flag =1
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
        dbText "Name" ="tblSUPERVISORS.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1184
    Bottom =929
    Left =-1
    Top =-1
    Right =1168
    Bottom =571
    Left =0
    Top =576
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="tblSUPERVISORS"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="tblTASKLIST"
        Name =""
    End
End
