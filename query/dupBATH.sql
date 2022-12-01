﻿SELECT tblEP_BATHE.ID, tblPARTNUM.partNum, refREV.rev
FROM (tblEP_BATHE INNER JOIN tblPARTNUM ON tblEP_BATHE.partNum = tblPARTNUM.ID) INNER JOIN refREV ON tblEP_BATHE.Rev = refREV.ID
WHERE (((tblEP_BATHE.partNum)=868) AND ((tblEP_BATHE.rev)=1) AND ((tblEP_BATHE.obsolete)=False) AND ((tblEP_BATHE.[R&D])=False));
