﻿dbMemo "SQL" ="SELECT uElec.linker, uElec.electrode, qryPARTNUM_ALL.partNumber\015\012FROM (sel"
    "ect id as linker, electrode1 as electrode from tblEP_ELECTRODE Union select id a"
    "s linker, electrode2 from tblEP_ELECTRODE Union select id as linker, electrode3 "
    "from tblEP_ELECTRODE Union select id as linker, electrode4 from tblEP_ELECTRODE "
    "Union select id as linker, electrode5 from tblEP_ELECTRODE)  AS uElec INNER JOIN"
    " qryPARTNUM_ALL ON uElec.electrode = qryPARTNUM_ALL.uniqID\015\012WHERE (((uElec"
    ".linker) = 51))\015\012ORDER BY qryPARTNUM_ALL.partNumber;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
