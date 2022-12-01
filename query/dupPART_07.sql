SELECT tblPART_07.partNumber, tblPART_07.obsolete, tblPART_07.autoID, tblPART_07.partUseage
FROM tblPART_07
WHERE (((tblPART_07.partNumber) In (SELECT [partNumber] FROM [tblPART_07] As Tmp GROUP BY [partNumber] HAVING Count(*)>1 )) AND ((tblPART_07.obsolete)=False))
ORDER BY tblPART_07.partNumber DESC , tblPART_07.autoID DESC;
