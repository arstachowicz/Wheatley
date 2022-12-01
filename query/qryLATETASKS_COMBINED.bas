Operation =1
Option =0
Where ="(((tblSUPERVISORS.email)<>\"\") AND ((tblTASKLIST.combined)=True) AND ((tblSUPER"
    "VISORS.Employed)=True))"
Begin InputTables
    Name ="tblTASKLIST"
    Name ="tblSUPERVISORS"
End
Begin OutputColumns
    Expression ="tblSUPERVISORS.ID"
    Expression ="tblTASKLIST.ID"
    Expression ="tblTASKLIST.taskTitle"
    Expression ="tblTASKLIST.frequency"
    Expression ="tblSUPERVISORS.email"
    Alias ="lastENTRY"
    Expression ="DMax(\"timeDate\",[tableRel])"
    Alias ="nextOccurance"
    Expression ="IIf([FREQUENCY]=1,DateAdd(\"d\",1,[lastENTRY]),IIf([FREQUENCY]=2,DateAdd(\"d\",2"
        ",[lastENTRY]),IIf([FREQUENCY]=7,DateAdd(\"ww\",1,[lastENTRY]),IIf([FREQUENCY]=14"
        ",DateAdd(\"ww\",2,[lastENTRY]),IIf([FREQUENCY]=30,DateAdd(\"m\",1,[lastENTRY]),I"
        "If([FREQUENCY]=81,DateAdd(\"q\",1,[lastENTRY]),IIf([FREQUENCY]=365,DateAdd(\"yyy"
        "y\",1,[lastENTRY]),\"\")))))))"
    Alias ="emailSendDate"
    Expression ="DateAdd(\"d\",[alertEmail],[nextOccurance])"
    Expression ="tblTASKLIST.combined"
    Expression ="tblTASKLIST.tableRel"
End
Begin Joins
    LeftTable ="tblSUPERVISORS"
    RightTable ="tblTASKLIST"
    Expression ="tblSUPERVISORS.ID = tblTASKLIST.supervisorResponsible.Value"
    Flag =1
End
Begin OrderBy
    Expression ="tblSUPERVISORS.ID"
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
        dbText "Name" ="[supervisorResponsible].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="[tblTASKLIST].[tableRel]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="[tblTASKLIST].[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[frequency].[Value]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1812"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[tblTASKLIST].[supervisorResponsible]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.[frequency].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.[supervisorResponsible].[Value]"
        dbInteger "ColumnWidth" ="3960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.supervisorResponsible.Value"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2592"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tblTASKLIST.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1308"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTASKLIST.frequency.Value"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1176"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tblTASKLIST.frequency"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.supervisorResponsible"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="lastDATA"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="lastENTRY"
        dbInteger "ColumnWidth" ="1536"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tblTASKLIST.tableRel"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="lastENTRY1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.tableRel.Value"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2736"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="nextRecord"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="taskDue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="freq"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="nextDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="conversion"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[conversion]"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dueDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="daysPastDue"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="nextReading"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="nextOccurance"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1608"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="emailSendDate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1656"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tblTASKLIST.alertEmail"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.taskTitle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
        dbInteger "ColumnWidth" ="3156"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.email"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="3384"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblTASKLIST.emailSendDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.lastEmailSent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_1DF0DBFBCF9C42F4BDF10F84B7A4B273].[supervisorResponsible_BACBC68928A"
            "F40B4A1375DF3FA589F8E].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[tblSUPERVISORS].[email]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_1DF0DBFBCF9C42F4BDF10F84B7A4B273].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_1DF0DBFBCF9C42F4BDF10F84B7A4B273].[frequency_057D452E08694CF9B023219"
            "FCA134152].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblTASKLIST.combined"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="tblTASKLIST.combinedQuery"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="300"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[tblSUPERVISORS].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6EE2AC4259504ABCBAF314F486B3CEAF].[tblTASKLIST].[combined]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6EE2AC4259504ABCBAF314F486B3CEAF].[supervisorResponsible_EBD97E7180B"
            "D410DB425D8FBADE0D757].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6EE2AC4259504ABCBAF314F486B3CEAF].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6EE2AC4259504ABCBAF314F486B3CEAF].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6EE2AC4259504ABCBAF314F486B3CEAF].[frequency_86097E38B99F43C3886938B"
            "ECE0554E4].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="nextENTRY1"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_A76D54381EA046EEA060DAA47C716196].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_A76D54381EA046EEA060DAA47C716196].[frequency_3BA2CA51A15E49BBA9370ED"
            "3DC725014].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_A76D54381EA046EEA060DAA47C716196].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_A76D54381EA046EEA060DAA47C716196].[supervisorResponsible_4202B8005F8"
            "747159206D898CFA8A907].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblSUPERVISORS.Employed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[combined]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[tableRel]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[supervisorResponsible_93A0A788FE4"
            "04C00ADBEF3EE53B1E9AB].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_74F33F0D11B1426E8401231E60E555C8].[tblTASKLIST].[combinedQuery]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[supervisorResponsible_531757CFDA0"
            "54991B3808800902B84B8].[Value]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[combined]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[combinedQuery]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_C92A7F14AFEF4C92B2524AA1EE48BADC].[tblTASKLIST].[tableRel]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_AE385D4E331341429A4FB77F1EC857AC].[tblTASKLIST].[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_AE385D4E331341429A4FB77F1EC857AC].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_AE385D4E331341429A4FB77F1EC857AC].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_AE385D4E331341429A4FB77F1EC857AC].[tblTASKLIST].[combined]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_AE385D4E331341429A4FB77F1EC857AC].[tblTASKLIST].[tableRel]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6B286C938BD7461B82A5D89308F4D045].[tblTASKLIST].[taskTitle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6B286C938BD7461B82A5D89308F4D045].[tblTASKLIST].[ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6B286C938BD7461B82A5D89308F4D045].[tblTASKLIST].[frequency]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6B286C938BD7461B82A5D89308F4D045].[tblTASKLIST].[combined]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[QESubquery_6B286C938BD7461B82A5D89308F4D045].[tblTASKLIST].[tableRel]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1677
    Bottom =929
    Left =-1
    Top =-1
    Right =1661
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =118
        Top =2
        Right =502
        Bottom =243
        Top =0
        Name ="tblTASKLIST"
        Name =""
    End
    Begin
        Left =592
        Top =9
        Right =867
        Bottom =249
        Top =0
        Name ="tblSUPERVISORS"
        Name =""
    End
End
