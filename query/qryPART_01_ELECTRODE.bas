﻿dbMemo "SQL" ="SELECT tblPART_01.partNumber, tblPART_01_ELECTRODE.dia1, tblPART_01_ELECTRODE.le"
    "n1, tblPART_01_ELECTRODE.dia2, tblPART_01_ELECTRODE.len2, tblPART_01_ELECTRODE.t"
    "otLen, tblPART_01_ELECTRODE.specialFeatures, tblPART_01_ELECTRODE.groundElec, tb"
    "lPART_01_ELECTRODE.multiGlandFix, tblPART_01_ELECTRODE.tapered, tblPART_01_ELECT"
    "RODE.stepped, tblPART_01.obsolete\015\012FROM tblPART_01_ELECTRODE LEFT JOIN tbl"
    "PART_01 ON tblPART_01_ELECTRODE.elecLink = tblPART_01.autoID\015\012ORDER BY tbl"
    "PART_01.partNumber;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
