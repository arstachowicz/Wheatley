Operation =1
Option =0
Where ="(((tblMETERS_CR.timeDATE)>=[TempVars]![tmpDate1] And (tblMETERS_CR.timeDATE)<=[T"
    "empVars]![tmpDate2]))"
Begin InputTables
    Name ="tblMETERS_CR"
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblMETERS_CR.timeDATE"
    Expression ="tblMETERS_CR.timeHOUR"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin Joins
    LeftTable ="tblTECHNAME"
    RightTable ="tblMETERS_CR"
    Expression ="tblTECHNAME.ID = tblMETERS_CR.techNAME"
    Flag =3
End
Begin OrderBy
    Expression ="tblMETERS_CR.timeDATE"
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
        dbText "Name" ="tblMETERS_CR.[timeDATE]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMETERS_CR.[timeHOUR]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMETERS_CR.timeDATE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblMETERS_CR.timeHOUR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.firstName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTECHNAME.lastName"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =742
    Top =15
    Right =1624
    Bottom =547
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
        Name ="tblMETERS_CR"
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
