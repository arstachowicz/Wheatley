Operation =1
Option =0
Where ="(((tblTECHNAME.ID)<>3) AND ((tblTECHNAME.Employed)=True) AND ((tblTECHNAME.works"
    "CL)=True))"
Begin InputTables
    Name ="tblTECHNAME"
End
Begin OutputColumns
    Expression ="tblTECHNAME.ID"
    Expression ="tblTECHNAME.firstName"
    Expression ="tblTECHNAME.lastName"
End
Begin OrderBy
    Expression ="tblTECHNAME.firstName"
    Flag =0
    Expression ="tblTECHNAME.lastName"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tblTECHNAME.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1490
    Bottom =782
    Left =-1
    Top =-1
    Right =1470
    Bottom =580
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblTECHNAME"
        Name =""
    End
End
