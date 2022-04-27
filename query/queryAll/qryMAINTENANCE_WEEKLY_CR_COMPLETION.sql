SELECT Format([timedate],"ww") AS WeekGrouper, Last(tblMAINTENANCE_WEEKLY_CR.timeDate) AS LastOftimeDate, Min(tblMAINTENANCE_WEEKLY_CR.chasewaySweep) AS MinOfchasewaySweep, Min(tblMAINTENANCE_WEEKLY_CR.gowningSweep) AS MinOfgowningSweep, Min(tblMAINTENANCE_WEEKLY_CR.laundry) AS MinOflaundry, Min(tblMAINTENANCE_WEEKLY_CR.mopDrying) AS MinOfmopDrying, Min(tblMAINTENANCE_WEEKLY_CR.stakingToolsClean) AS MinOfstakingToolsClean, Min(tblMAINTENANCE_WEEKLY_CR.outsideLedges) AS MinOfoutsideLedges, Min(tblMAINTENANCE_WEEKLY_CR.mats) AS MinOfmats, Min(tblMAINTENANCE_WEEKLY_CR.handTools) AS MinOfhandTools, Min(tblMAINTENANCE_WEEKLY_CR.wipeCans) AS MinOfwipeCans, Min(tblMAINTENANCE_WEEKLY_CR.wipeBenches) AS MinOfwipeBenches
FROM tblMAINTENANCE_WEEKLY_CR
WHERE (((Format([timedate],"yy"))=Format(Date(),"yy")))
GROUP BY Format([timedate],"ww")
HAVING (((Format([timedate],"ww"))=Format(Date(),"ww")));
