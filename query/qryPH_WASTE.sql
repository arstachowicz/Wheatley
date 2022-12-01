SELECT tblPH_WASTE.timeDate, tblPH_WASTE.timeHour, tblPH_WASTE.pH, tblPH_WASTE.drained, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME RIGHT JOIN tblPH_WASTE ON tblTECHNAME.ID = tblPH_WASTE.techName
WHERE (((tblPH_WASTE.timeDate)>=[TempVars]![tmpDate1] And (tblPH_WASTE.timeDate)<=[TempVars]![tmpDate2]))
ORDER BY tblPH_WASTE.timeDate, tblPH_WASTE.timeHour;
