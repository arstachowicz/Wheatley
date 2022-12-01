SELECT tblSUPERVISORS.firstName, tblSUPERVISORS.lastName, tblSUPERVISORS.ID
FROM tblSUPERVISORS
WHERE (((tblSUPERVISORS.firstName) In (SELECT [firstName] FROM [tblSUPERVISORS] As Tmp GROUP BY [firstName],[lastName] HAVING Count(*)>1  And [lastName] = [tblSUPERVISORS].[lastName])))
ORDER BY tblSUPERVISORS.firstName, tblSUPERVISORS.lastName;
