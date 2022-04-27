Operation =1
Option =0
Where ="(((qryPARTNUM_ALL.linkedID)=[uq]![sID])) OR (((qryPARTNUM_ALL.partNumber)=\"01-5"
    "0-0020\"))"
Begin InputTables
    Name ="qryPARTNUM_ALL"
    Name ="SELECT tblEP.partNum as talonPart, uSEAL.seal as sID, tblEP.Rev as Rev, tblEP.ob"
        "solete as obso, \"tblEP\" as tbl FROM (select id as linker, cseal1 as seal from "
        "tblEP_CSEAL union select id, cseal2 as seal from tblEP_CSEAL union select id, cs"
        "eal3 as seal from tblEP_CSEAL)   AS uSEAL INNER JOIN tblEP ON uSEAL.linker = tbl"
        "EP.csealLink WHERE (((isNull([seal])) = false))     UNION  SELECT tblEP.partNum,"
        " uELEC.elec, tblEP.Rev, tblEP.obsolete, \"tblEP\" FROM (select id as linker, ele"
        "ctrode1 as elec from tblEP_ELECTRODE union select id, electrode2  from tblEP_ELE"
        "CTRODE union select id, electrode3  from tblEP_ELECTRODE union select id, electr"
        "ode4  from tblEP_ELECTRODE union select id, electrode5  from tblEP_ELECTRODE uni"
        "on select id, groundElectrode from tblEP_ELECTRODE)  AS uELEC INNER JOIN tblEP O"
        "N uELEC.linker = tblEP.elecLink WHERE (((isNull([elec])) = false))  UNION  SELEC"
        "T tblEP.partNum, uMISC.idMisc, tblEP.Rev, tblEP.obsolete, \"tblEP\" FROM (select"
        " id as linker, eleSleeve1 as idMisc from tblEP_MISC union select id, eleSleeve2 "
        " from tblEP_MISC union select id, eleSleeve3  from tblEP_MISC union select id, e"
        "leSleeve4  from tblEP_MISC union select id, eleSleeve5  from tblEP_MISC union se"
        "lect id, eleCap1 from tblEP_MISC union select id, misc1 from tblEP_MISC union se"
        "lect id, misc2 from tblEP_MISC union select id, misc3 from tblEP_MISC union sele"
        "ct id, misc4 from tblEP_MISC union select id, misc5 from tblEP_MISC union select"
        " id, SPACER1 from tblEP_MISC union select id, spacer2 from tblEP_MISC)  AS uMISC"
        " INNER JOIN tblEP ON uMISC.linker = tblEP.elecLink WHERE (((IsNull([idmisc]))=Fa"
        "lse))  UNION  SELECT tblEP.partNum, uHalf.partID, tblEP.Rev, tblEP.obsolete, \"t"
        "blEP\" FROM (select id as epID, capNum as partID from tblEP union select id, bas"
        "enum from tblEP)  AS uHalf INNER JOIN tblEP ON uHalf.epID = tblEP.ID  UNION  SEL"
        "ECT tblPRESS.partNum, uPRESS.idPart, tblPRESS.rev, tblPRESS.obsolete, \"tblPRESS"
        "\" FROM (select id as linker, partTop as idPart from tblPRESS union select id, p"
        "artBot from tblPRESS union select id, partTOOL1 from tblPRESS union select id, p"
        "artTOOL2 from tblPRESS union select id, partTOOL3 from tblPRESS union select id,"
        " partMISC from tblPRESS)  AS uPRESS INNER JOIN tblPRESS ON uPRESS.linker = tblPR"
        "ESS.ID WHERE (((IsNull([IDPart]))=False))  union  SELECT tblLEAK_CHECK.partNum, "
        "uLEAK.idPart, tblLEAK_CHECK.rev, tblLEAK_CHECK.obsolete, \"tblLEAK_CHECK\" FROM "
        "(select autoid as linker, topNum as idPart from tblLEAK_CHECK union select autoi"
        "d, bottomNum from tblLEAK_CHECK union select autoid, maniNum1 from tblLEAK_CHECK"
        " union select autoid, maniNum2 from tblLEAK_CHECK union select autoid, miscNum1 "
        "from tblLEAK_CHECK union select autoid, miscNum2 from tblLEAK_CHECK union select"
        " autoid, miscNum3 from tblLEAK_CHECK union select autoid, miscNum4 from tblLEAK_"
        "CHECK union select autoid, miscNum5 from tblLEAK_CHECK)  AS uLEAK INNER JOIN tbl"
        "LEAK_CHECK ON uLEAK.linker = tblLEAK_CHECK.autoID WHERE (((IsNull([IDPart]))=Fal"
        "se)) union SELECT tblEP_BATHE.partNum, uBATH.idPart, tblEP_BATHE.rev, tblEP_BATH"
        "E.obsolete, \"tblEP_BATHE\"  FROM (select ID as linker, assemblyID as idPart fro"
        "m tblEP_BATHE union select ID, base1 from tblEP_BATHE union select ID, base2 fro"
        "m tblEP_BATHE union select ID, grndElec1 from tblEP_BATHE union select ID, grndE"
        "lec2 from tblEP_BATHE)  AS uBATH INNER JOIN tblEP_BATHE ON uBATH.linker = tblEP_"
        "BATHE.ID WHERE (((IsNull([IDPart]))=False)) "
    Alias ="UQ"
    Name ="refREV"
    Name ="tblPARTNUM"
End
Begin OutputColumns
    Expression ="tblPARTNUM.ID"
    Expression ="tblPARTNUM.partNum"
    Expression ="refREV.rev"
    Alias ="obsol"
    Expression ="IIf([obso]=0,\"\",\"Obsolete\")"
    Expression ="qryPARTNUM_ALL.partType"
    Expression ="qryPARTNUM_ALL.subcategory"
    Expression ="qryPARTNUM_ALL.locName"
    Expression ="UQ.tbl"
End
Begin Joins
    LeftTable ="UQ"
    RightTable ="refREV"
    Expression ="UQ.Rev = refREV.ID"
    Flag =2
    LeftTable ="UQ"
    RightTable ="tblPARTNUM"
    Expression ="UQ.talonPart = tblPARTNUM.ID"
    Flag =1
    LeftTable ="qryPARTNUM_ALL"
    RightTable ="UQ"
    Expression ="qryPARTNUM_ALL.uniqID = UQ.sID"
    Flag =1
End
Begin OrderBy
    Expression ="tblPARTNUM.partNum"
    Flag =0
    Expression ="refREV.rev"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "LogMessages" ="0"
dbByte "Orientation" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="refREV.rev"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPARTNUM.partNum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1992"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="obsol"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.partType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.locName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPARTNUM.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="UQ.tbl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryPARTNUM_ALL.subcategory"
        dbLong "AggregateType" ="-1"
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
    Bottom =155
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="qryPARTNUM_ALL"
        Name =""
    End
    Begin
        Left =260
        Top =41
        Right =404
        Bottom =185
        Top =0
        Name ="UQ"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="refREV"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="tblPARTNUM"
        Name =""
    End
End
