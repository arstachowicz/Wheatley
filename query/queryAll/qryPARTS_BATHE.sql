SELECT tblPART_01.partNumber, tblPART_TYPES.partType, tblSUBCATEGORY.category, tblPART_01.notes, tblPART_01.autoID
FROM (tblPART_01 LEFT JOIN tblPART_TYPES ON tblPART_01.partUseage = tblPART_TYPES.ID) LEFT JOIN tblSUBCATEGORY ON tblPART_01.subcategory = tblSUBCATEGORY.ID
WHERE (((tblPART_TYPES.ID)=12) AND ((tblPART_01.obsolete)=False))
ORDER BY tblPART_01.partNumber;
