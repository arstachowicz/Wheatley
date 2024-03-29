﻿SELECT tblTECHNAME.ID, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME
WHERE (((tblTECHNAME.firstName) In (SELECT [firstName] FROM [tblTECHNAME] As Tmp GROUP BY [firstName],[lastName] HAVING Count(*)>1  And [lastName] = [tblTECHNAME].[lastName])))
ORDER BY tblTECHNAME.ID DESC;
