SELECT tblPARTNUM.partNum, tblEP_BATHE.assemblyID, tblPART_01.partNumber, tblEP_BATHE.pageNum, tblEP_BATHE.processRev AS Expr1, tblEP_BATHE.epVolt, tblEP_BATHE.epTime, tblEP_BATHE.processLayout
FROM (tblEP_BATHE LEFT JOIN tblPARTNUM ON tblEP_BATHE.partNum = tblPARTNUM.ID) LEFT JOIN tblPART_01 ON tblEP_BATHE.assemblyID = tblPART_01.autoID
ORDER BY tblEP_BATHE.processRev DESC;
