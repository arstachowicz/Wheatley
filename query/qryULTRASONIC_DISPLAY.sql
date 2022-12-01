﻿SELECT TOP 50 tblULTRASONICS.timeDate, tblULTRASONICS.timeHour, tblULTRASONICS.building, tblULTRASONICS.tank, tblULTRASONICS.temperature, tblULTRASONICS.position1, tblULTRASONICS.position2, tblULTRASONICS.position3, tblULTRASONICS.position4, tblULTRASONICS.position5, tblULTRASONICS.position6, tblULTRASONICS.position7, tblULTRASONICS.position8, tblULTRASONICS.position9, tblTECHNAME.firstName, tblTECHNAME.lastName
FROM tblTECHNAME RIGHT JOIN tblULTRASONICS ON tblTECHNAME.ID = tblULTRASONICS.techName
ORDER BY tblULTRASONICS.timeDate DESC , tblULTRASONICS.timeHour DESC;
