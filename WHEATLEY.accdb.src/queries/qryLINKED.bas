Operation =1
Option =0
Where ="(((qryPARTNUM_ALL.uniqID)=\"A407\") AND ((qryPARTNUM_ALL.partNumber)<>\"01-10-04"
    "07\")) OR (((qryPARTNUM_ALL.partNumber)<>\"01-10-0407\") AND ((qryPARTNUM_ALL.li"
    "nkedID)=\"A407\"))"
Begin InputTables
    Name ="qryPARTNUM_ALL"
End
Begin OutputColumns
    Expression ="qryPARTNUM_ALL.uniqID"
    Expression ="qryPARTNUM_ALL.partNumber"
    Expression ="qryPARTNUM_ALL.linkedID"
End
Begin OrderBy
    Expression ="qryPARTNUM_ALL.partNumber"
    Flag =0
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
        dbText "Name" ="qryPARTNUM_ALL.uniqID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.linkedID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =724
    Bottom =646
    Left =-1
    Top =-1
    Right =708
    Bottom =400
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =428
        Top =15
        Right =936
        Bottom =394
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
End
