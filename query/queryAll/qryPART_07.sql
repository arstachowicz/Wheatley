SELECT tblPART_07.partNumber, refREV.rev, tblPART_07.obsolete, tblPART_07.[r&d], tblPART_TYPES.partType, tblPART_07.notes, tblSUBCATEGORY.category
FROM ((tblPART_07 LEFT JOIN refREV ON tblPART_07.Rev = refREV.ID) LEFT JOIN tblPART_TYPES ON tblPART_07.partuseage = tblPART_TYPES.ID) LEFT JOIN tblSUBCATEGORY ON tblPART_07.subcategory = tblSUBCATEGORY.ID
ORDER BY tblPART_07.partNumber, refREV.rev;
