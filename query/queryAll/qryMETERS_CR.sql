SELECT tblMETERS_CR.timeDATE, tblMETERS_CR.timeHOUR, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME RIGHT JOIN tblMETERS_CR ON tblTECHNAME.ID = tblMETERS_CR.techNAME
WHERE (((tblMETERS_CR.timeDATE)>=[TempVars]![tmpDate1] And (tblMETERS_CR.timeDATE)<=[TempVars]![tmpDate2]))
ORDER BY tblMETERS_CR.timeDATE;
