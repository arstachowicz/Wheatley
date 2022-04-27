Operation =1
Option =0
Where ="(((tblPASSIVATE.partNum)=867) AND ((tblPASSIVATE.rev)=28) AND ((tblPASSIVATE.obs"
    "olete)=False) AND ((tblPASSIVATE.[R&D])=False))"
Begin InputTables
    Name ="tblPASSIVATE"
    Name ="tblPARTNUM"
    Name ="refREV"
End
Begin OutputColumns
    Expression ="tblPASSIVATE.ID"
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
End
Begin Joins
    LeftTable ="tblPASSIVATE"
    RightTable ="tblPARTNUM"
    Expression ="tblPASSIVATE.partNum = tblPARTNUM.ID"
    Flag =1
    LeftTable ="tblPASSIVATE"
    RightTable ="refREV"
    Expression ="tblPASSIVATE.Rev = refREV.ID"
    Flag =1
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
        dbText "Name" ="tblPASSIVATE.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1206
    Bottom =929
    Left =-1
    Top =-1
    Right =1190
    Bottom =321
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =536
        Bottom =393
        Top =0
        Name ="tblPASSIVATE"
        Name =""
    End
    Begin
        Left =584
        Top =12
        Right =728
        Bottom =156
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =776
        Top =12
        Right =920
        Bottom =156
        Top =0
        Name ="refREV"
        Name =""
    End
End
