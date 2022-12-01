SELECT TOP 20 tblPH_WASTE.timeDate, tblPH_WASTE.timeHour, tblPH_WASTE.pH, tblPH_WASTE.drained, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME RIGHT JOIN tblPH_WASTE ON tblTECHNAME.ID = tblPH_WASTE.techName
ORDER BY tblPH_WASTE.timeDate DESC , tblPH_WASTE.timeHour DESC;
