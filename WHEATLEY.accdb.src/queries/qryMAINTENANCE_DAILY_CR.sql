SELECT tblMAINTENANCE_DAILY_CR.timeDate, tblMAINTENANCE_DAILY_CR.mats, tblMAINTENANCE_DAILY_CR.passThru, tblMAINTENANCE_DAILY_CR.restock, tblMAINTENANCE_DAILY_CR.mopFloor, tblMAINTENANCE_DAILY_CR.wipeSurfaces, tblMAINTENANCE_DAILY_CR.toolsUsed, tblMAINTENANCE_DAILY_CR.trash, tblTECHNAME.firstName, tblTECHNAME.lastName, tblSHIFTS.shift
FROM (tblMAINTENANCE_DAILY_CR LEFT JOIN tblTECHNAME ON tblMAINTENANCE_DAILY_CR.techName = tblTECHNAME.ID) LEFT JOIN tblSHIFTS ON tblTECHNAME.shift = tblSHIFTS.ID
WHERE (((tblMAINTENANCE_DAILY_CR.timeDate)>=[TempVars]![tmpDate1] And (tblMAINTENANCE_DAILY_CR.timeDate)<=[TempVars]![tmpDate2]) AND ((IsNull([temperature]))=True) AND ((IsNull([tankA]))=True) AND ((IsNull([TankB]))=True))
ORDER BY tblMAINTENANCE_DAILY_CR.timeDate;
