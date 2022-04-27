Operation =1
Option =16
RowCount ="15"
Begin InputTables
    Name ="tblMETALS_AAS"
    Name ="tblLABORATORIES"
    Name ="tblCHEMICALS"
    Name ="tblLINES"
End
Begin OutputColumns
    Expression ="tblMETALS_AAS.timeDate"
    Expression ="tblLABORATORIES.nameLab"
    Expression ="tblCHEMICALS.chemical"
    Expression ="tblLINES.Line"
    Expression ="tblMETALS_AAS.perAcid"
    Expression ="tblMETALS_AAS.density"
    Expression ="tblMETALS_AAS.Copper"
    Expression ="tblMETALS_AAS.unitCu"
    Expression ="tblMETALS_AAS.Nickel"
    Expression ="tblMETALS_AAS.unitNi"
    Expression ="tblMETALS_AAS.Iron"
    Expression ="tblMETALS_AAS.unitFe"
    Expression ="tblMETALS_AAS.chromium"
    Expression ="tblMETALS_AAS.unitCr"
    Expression ="tblMETALS_AAS.zinc"
    Expression ="tblMETALS_AAS.unitZn"
    Expression ="tblMETALS_AAS.molybdenum"
    Expression ="tblMETALS_AAS.unitMo"
    Expression ="tblMETALS_AAS.comments"
End
Begin Joins
    LeftTable ="tblLABORATORIES"
    RightTable ="tblMETALS_AAS"
    Expression ="tblLABORATORIES.ID = tblMETALS_AAS.laboratory"
    Flag =3
    LeftTable ="tblMETALS_AAS"
    RightTable ="tblCHEMICALS"
    Expression ="tblMETALS_AAS.acid = tblCHEMICALS.ID"
    Flag =2
    LeftTable ="tblMETALS_AAS"
    RightTable ="tblLINES"
    Expression ="tblMETALS_AAS.line = tblLINES.ID"
    Flag =2
End
Begin OrderBy
    Expression ="tblMETALS_AAS.timeDate"
    Flag =1
    Expression ="tblCHEMICALS.chemical"
    Flag =0
    Expression ="tblLINES.Line"
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
        dbText "Name" ="tblMETALS_AAS.comments"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1332"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "DisplayControl" ="109"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.timeDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.Iron"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.density"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitNi"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.perAcid"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1788"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.Copper"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitCu"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.Nickel"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitFe"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.chromium"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitCr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.zinc"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitZn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
    End
    Begin
        dbText "Name" ="tblLABORATORIES.nameLab"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1356"
        dbInteger "ColumnOrder" ="18"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblCHEMICALS.chemical"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1188"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Chemical"
    End
    Begin
        dbText "Name" ="tblLINES.Line"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="744"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.unitMo"
        dbLong "AggregateType" ="-1"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Value List"
        dbMemo "RowSource" ="1;g/L;2;ppm;3;w/w%"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="tblMETALS_AAS.molybdenum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1229
    Bottom =937
    Left =-1
    Top =-1
    Right =1213
    Bottom =411
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =60
        Top =15
        Right =240
        Bottom =195
        Top =0
        Name ="tblMETALS_AAS"
        Name =""
    End
    Begin
        Left =361
        Top =147
        Right =541
        Bottom =327
        Top =0
        Name ="tblLABORATORIES"
        Name =""
    End
    Begin
        Left =597
        Top =15
        Right =777
        Bottom =195
        Top =0
        Name ="tblCHEMICALS"
        Name =""
    End
    Begin
        Left =837
        Top =15
        Right =1017
        Bottom =195
        Top =0
        Name ="tblLINES"
        Name =""
    End
End
