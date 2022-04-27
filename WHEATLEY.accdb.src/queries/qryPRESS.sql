SELECT TOP 1 tblPARTNUM.partNum, refREV.rev, tblPRESS.partTop, qryPARTNUM_ALL.partNumber AS topStr, tblPRESS.partBot, qryPARTNUM_ALL_1.partNumber AS botStr, tblPRESS.ID, tblPRESS.fileName, tblPRESS.filePage
FROM (((tblPRESS LEFT JOIN refREV ON tblPRESS.rev = refREV.ID) INNER JOIN tblPARTNUM ON tblPRESS.partNum = tblPARTNUM.ID) LEFT JOIN qryPARTNUM_ALL ON tblPRESS.partTop = qryPARTNUM_ALL.uniqID) LEFT JOIN qryPARTNUM_ALL AS qryPARTNUM_ALL_1 ON tblPRESS.partBot = qryPARTNUM_ALL_1.uniqID
WHERE (((tblPARTNUM.partNum)="03-10-0025"))
ORDER BY refREV.rev DESC;
