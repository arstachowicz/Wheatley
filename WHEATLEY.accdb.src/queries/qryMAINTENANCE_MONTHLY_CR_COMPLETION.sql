SELECT Min(tblMAINTENANCE_MONTHLY_CR.cleanWalls) AS MinOfcleanWalls, Min(tblMAINTENANCE_MONTHLY_CR.cleanCeilings) AS MinOfcleanCeilings, Min(tblMAINTENANCE_MONTHLY_CR.leakCal4) AS MinOfleakCal4, Min(tblMAINTENANCE_MONTHLY_CR.leakCal5) AS MinOfleakCal5, Min(tblMAINTENANCE_MONTHLY_CR.leakCal6) AS MinOfleakCal6, Min(tblMAINTENANCE_MONTHLY_CR.leakCal7) AS MinOfleakCal7
FROM tblMAINTENANCE_MONTHLY_CR
GROUP BY Format([timedate],"m"), Format([timedate],"yy")
HAVING (((Format([timedate],"m"))=Format(Date(),"m")) AND ((Format([timedate],"yy"))=Format(Date(),"yy")));
