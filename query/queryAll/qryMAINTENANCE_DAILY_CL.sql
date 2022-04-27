SELECT tblMAINTENANCE_DAILY_CL.timeDate, tblMAINTENANCE_DAILY_CL.resistanceMeter, tblMAINTENANCE_DAILY_CL.waterMeter_CR, tblMAINTENANCE_DAILY_CL.waterMeter_CL, tblMAINTENANCE_DAILY_CL.uvLight, tblMAINTENANCE_DAILY_CL.cleanFloor, tblTECHNAME.firstName, tblTECHNAME.lastName, tblMAINTENANCE_DAILY_CL.usRefilled
FROM tblTECHNAME RIGHT JOIN tblMAINTENANCE_DAILY_CL ON tblTECHNAME.ID = tblMAINTENANCE_DAILY_CL.techName
WHERE (((tblMAINTENANCE_DAILY_CL.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE_DAILY_CL.timeDate)<=[TempVars]![tmpDate2]))
ORDER BY tblMAINTENANCE_DAILY_CL.timeDate;