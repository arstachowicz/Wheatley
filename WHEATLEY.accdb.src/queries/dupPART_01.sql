SELECT tblPART_01.autoID, tblPART_01.partNumber, refREV.rev, tblPART_01.obsolete
FROM tblPART_01 LEFT JOIN refREV ON tblPART_01.rev = refREV.ID
WHERE (((tblPART_01.partNumber) In (SELECT [partNumber] FROM [tblPART_01] As Tmp GROUP BY [partNumber],[rev] HAVING Count(*)>1  And [rev] = [tblPART_01].[rev])) AND ((tblPART_01.obsolete)=False))
ORDER BY tblPART_01.autoID DESC , tblPART_01.partNumber, refREV.rev;
