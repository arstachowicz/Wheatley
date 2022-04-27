SELECT Format([timedate],"ww") AS WeekGrouper, Min(tblMAINTENANCE_WEEKLY_CL.safetyShower) AS MinOfsafetyShower, Min(tblMAINTENANCE_WEEKLY_CL.eyeFlush) AS MinOfeyeFlush
FROM tblMAINTENANCE_WEEKLY_CL
WHERE (((Format([timeDate],"yy"))=Format(Date(),"yy")))
GROUP BY Format([timedate],"ww")
HAVING (((Format([timedate],"ww"))=Format(Date(),"ww")));
