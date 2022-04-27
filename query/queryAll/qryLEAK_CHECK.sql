SELECT TOP 1 tblLEAK_CHECK.topNum, qryPARTNUM_ALL.partNumber AS topStr, tblLEAK_CHECK.bottomNum, qryPARTNUM_ALL_1.partNumber AS botStr, tblLEAK_CHECK.maniNum1, qryPARTNUM_ALL_2.partNumber AS manStr1, tblLEAK_CHECK.maniNum2, qryPARTNUM_ALL_3.partNumber AS manStr2, tblLEAK_CHECK.processLayout, tblLEAK_CHECK.filePage
FROM ((((tblLEAK_CHECK LEFT JOIN refREV ON tblLEAK_CHECK.rev = refREV.ID) LEFT JOIN qryPARTNUM_ALL ON tblLEAK_CHECK.topNum = qryPARTNUM_ALL.uniqID) LEFT JOIN qryPARTNUM_ALL AS qryPARTNUM_ALL_1 ON tblLEAK_CHECK.bottomNum = qryPARTNUM_ALL_1.uniqID) LEFT JOIN qryPARTNUM_ALL AS qryPARTNUM_ALL_2 ON tblLEAK_CHECK.maniNum1 = qryPARTNUM_ALL_2.uniqID) LEFT JOIN qryPARTNUM_ALL AS qryPARTNUM_ALL_3 ON tblLEAK_CHECK.maniNum2 = qryPARTNUM_ALL_3.uniqID
WHERE (((tblLEAK_CHECK.partNum) = 276) And ((tblLEAK_CHECK.obsolete) = False) And ((tblLEAK_CHECK.[R&D]) = False))
ORDER BY refREV.rev DESC;
