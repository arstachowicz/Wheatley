SELECT tblFUMEHOODS.timeDate, tblFUMEHOODS.timeHour, tblLINES.Line, tblCHEMICALS.chemical, tblFUMEHOODS.velocity, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblCHEMICALS RIGHT JOIN (tblTECHNAME RIGHT JOIN (tblLINES RIGHT JOIN tblFUMEHOODS ON tblLINES.ID = tblFUMEHOODS.line) ON tblTECHNAME.ID = tblFUMEHOODS.techName) ON tblCHEMICALS.ID = tblFUMEHOODS.chemical
WHERE (((tblFUMEHOODS.timeDate)>=[TempVars]![tmpDate1] And (tblFUMEHOODS.timeDate)<=[TempVars]![tmpDate2]) AND ((tblLINES.ID) Like [TempVars]![tmpLINE]) AND ((tblCHEMICALS.ID) Like [TempVars]![tmpCHEM]))
ORDER BY tblFUMEHOODS.timeDate, tblFUMEHOODS.timeHour, tblLINES.Line;
