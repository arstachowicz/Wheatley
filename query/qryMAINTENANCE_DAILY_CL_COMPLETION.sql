SELECT tblMAINTENANCE_DAILY_CL.timeDate, Max(tblMAINTENANCE_DAILY_CL.resistanceMeter) AS MaxOfresistanceMeter, Max(tblMAINTENANCE_DAILY_CL.waterMeter_CR) AS MaxOfwaterMeter_CR, Avg(tblMAINTENANCE_DAILY_CL.waterMeter_CL) AS AvgOfwaterMeter_CL, Min(tblMAINTENANCE_DAILY_CL.uvLight) AS MinOfuvLight, Min(tblMAINTENANCE_DAILY_CL.cleanFloor) AS MinOfcleanFloor, Min(tblMAINTENANCE_DAILY_CL.usCleaned) AS MinOfusCleaned, Min(tblMAINTENANCE_DAILY_CL.usRefilled) AS MinOfusRefilled
FROM tblTECHNAME RIGHT JOIN tblMAINTENANCE_DAILY_CL ON tblTECHNAME.ID = tblMAINTENANCE_DAILY_CL.techName
GROUP BY tblMAINTENANCE_DAILY_CL.timeDate
HAVING (((tblMAINTENANCE_DAILY_CL.timeDate)=Date()))
ORDER BY tblMAINTENANCE_DAILY_CL.timeDate DESC;
