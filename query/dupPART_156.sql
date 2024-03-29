﻿SELECT tblPART_156.partNumber, refREV.rev, tblPART_156.autoID
FROM tblPART_156 LEFT JOIN refREV ON tblPART_156.rev = refREV.ID
WHERE (((tblPART_156.partNumber) In (SELECT [partNumber] FROM [tblPART_07] As Tmp GROUP BY [partNumber] HAVING Count(*)>1 )) AND ((tblPART_156.obsolete)=False))
ORDER BY tblPART_156.partNumber DESC , refREV.rev;
