SELECT tblTECHNAME.ID, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME
WHERE (((tblTECHNAME.ID)<>3) AND ((tblTECHNAME.Employed)=True) AND ((tblTECHNAME.worksCR)=True))
ORDER BY tblTECHNAME.firstName, tblTECHNAME.lastName;