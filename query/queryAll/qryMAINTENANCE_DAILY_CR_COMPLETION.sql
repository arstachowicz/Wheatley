SELECT Min(tblMAINTENANCE_DAILY_CR.mats) AS MinOfmats, Min(tblMAINTENANCE_DAILY_CR.passThru) AS MinOfpassThru, Min(tblMAINTENANCE_DAILY_CR.restock) AS MinOfrestock, Min(tblMAINTENANCE_DAILY_CR.mopFloor) AS MinOfmopFloor, Min(tblMAINTENANCE_DAILY_CR.wipeSurfaces) AS MinOfwipeSurfaces, Min(tblMAINTENANCE_DAILY_CR.toolsUsed) AS MinOftoolsUsed, Min(tblMAINTENANCE_DAILY_CR.trash) AS MinOftrash
FROM tblMAINTENANCE_DAILY_CR
GROUP BY tblMAINTENANCE_DAILY_CR.timeDate
HAVING (((tblMAINTENANCE_DAILY_CR.timeDate)=Date()))
ORDER BY tblMAINTENANCE_DAILY_CR.timeDate DESC;
