Operation =1
Option =0
Begin InputTables
    Name ="tblPARTNUM"
    Name ="tblEP"
    Name ="tblPRESS"
    Name ="tblLEAK_CHECK"
End
Begin OutputColumns
    Expression ="tblPARTNUM.ID"
    Expression ="tblPARTNUM.partNum"
    Expression ="tblEP.ID"
    Expression ="tblLEAK_CHECK.autoID"
    Expression ="tblPRESS.ID"
End
Begin Joins
    LeftTable ="tblPARTNUM"
    RightTable ="tblEP"
    Expression ="tblPARTNUM.ID = tblEP.partNum"
    Flag =2
    LeftTable ="tblPARTNUM"
    RightTable ="tblLEAK_CHECK"
    Expression ="tblPARTNUM.ID = tblLEAK_CHECK.partNum"
    Flag =2
    LeftTable ="tblPARTNUM"
    RightTable ="tblPRESS"
    Expression ="tblPARTNUM.ID = tblPRESS.partNum"
    Flag =2
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
        dbText "Name" ="tblPARTNUM.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPRESS.ID"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Press Link"
        dbInteger "ColumnWidth" ="1236"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblEP.ID"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="EP Link"
        dbInteger "ColumnWidth" ="996"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblLEAK_CHECK.autoID"
        dbLong "AggregateType" ="-1"
        dbMemo "Caption" ="Leak Check Link"
        dbInteger "ColumnWidth" ="1764"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =-1
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =79
        Top =205
        Right =259
        Bottom =385
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
    Begin
        Left =541
        Top =45
        Right =721
        Bottom =225
        Top =0
        Name ="tblEP"
        Name =""
    End
    Begin
        Left =683
        Top =276
        Right =863
        Bottom =456
        Top =0
        Name ="tblPRESS"
        Name =""
    End
    Begin
        Left =395
        Top =242
        Right =575
        Bottom =422
        Top =0
        Name ="tblLEAK_CHECK"
        Name =""
    End
End
