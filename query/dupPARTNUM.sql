﻿SELECT tblPARTNUM.ID, tblPARTNUM.partNum
FROM tblPARTNUM
WHERE (((tblPARTNUM.partNum) In (SELECT [partNum] FROM [tblPARTNUM] As Tmp GROUP BY [partNum] HAVING Count(*)>1 )))
ORDER BY tblPARTNUM.ID DESC , tblPARTNUM.partNum;
