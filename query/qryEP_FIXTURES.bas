Operation =1
Option =16
RowCount ="1"
Where ="(((tblEP.partNum) = 620) And ((tblEP.[R&D]) = False) And ((tblEP.obsolete) = Fal"
    "se))"
Begin InputTables
    Name ="tblEP"
    Name ="qryPARTNUM_ALL"
    Name ="qryPARTNUM_ALL"
    Alias ="qryPARTNUM_ALL_1"
    Name ="tblPART_STORAGE"
    Name ="tblPART_STORAGE"
    Alias ="tblPART_STORAGE_1"
End
Begin OutputColumns
    Expression ="tblEP.Rev"
    Expression ="tblEP.capNum"
    Expression ="tblEP.baseNum"
    Alias ="capStr"
    Expression ="qryPARTNUM_ALL.partNumber"
    Alias ="baseStr"
    Expression ="qryPARTNUM_ALL_1.partNumber"
    Expression ="tblEP.elecLink"
    Expression ="tblEP.csealLink"
    Expression ="tblEP.miscLink"
    Expression ="tblEP.epVolt"
    Expression ="tblEP.epTime"
    Expression ="tblEP.epPump"
    Expression ="tblEP.fileName"
    Expression ="tblEP.filePage"
    Expression ="tblPART_STORAGE.ID"
    Alias ="capLoc"
    Expression ="tblPART_STORAGE.locName"
    Expression ="tblPART_STORAGE_1.ID"
    Alias ="baseLoc"
    Expression ="tblPART_STORAGE_1.locName"
End
Begin Joins
    LeftTable ="tblEP"
    RightTable ="qryPARTNUM_ALL"
    Expression ="tblEP.capNum = qryPARTNUM_ALL.uniqID"
    Flag =2
    LeftTable ="tblEP"
    RightTable ="qryPARTNUM_ALL_1"
    Expression ="tblEP.baseNum = qryPARTNUM_ALL_1.uniqID"
    Flag =2
    LeftTable ="qryPARTNUM_ALL"
    RightTable ="tblPART_STORAGE"
    Expression ="qryPARTNUM_ALL.location = tblPART_STORAGE.ID"
    Flag =2
    LeftTable ="qryPARTNUM_ALL_1"
    RightTable ="tblPART_STORAGE_1"
    Expression ="qryPARTNUM_ALL_1.location = tblPART_STORAGE_1.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblEP.Rev"
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
        dbText "Name" ="tblEP.epVolt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="tblEP.epTime"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="tblEP.epPump"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="CapLoc"
        dbInteger "ColumnWidth" ="1152"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="BaseLoc"
        dbInteger "ColumnWidth" ="1152"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="tblEP.elecLink"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblEP.csealLink"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tblEP.miscLink"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblEP.Rev"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblEP.capNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblEP.baseNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblPART_STORAGE_1.ID"
        dbInteger "ColumnWidth" ="1104"
        dbInteger "ColumnOrder" ="14"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPART_STORAGE.ID"
        dbInteger "ColumnOrder" ="16"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CapStr"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BaseStr"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.fileName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblEP.filePage"
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
    Bottom =554
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =425
        Top =0
        Name ="tblEP"
        Name =""
    End
    Begin
        Left =300
        Top =15
        Right =480
        Bottom =404
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
    Begin
        Left =540
        Top =15
        Right =720
        Bottom =195
        Top =0
        Name ="qryPARTNUM_ALL_1"
        Name =""
    End
    Begin
        Left =780
        Top =15
        Right =960
        Bottom =195
        Top =0
        Name ="tblPART_STORAGE"
        Name =""
    End
    Begin
        Left =1020
        Top =15
        Right =1200
        Bottom =195
        Top =0
        Name ="tblPART_STORAGE_1"
        Name =""
    End
End
