SELECT TOP 1 tblPASSIVATE.partNum, tblPARTNUM.partNum, qryPARTNUM_ALL.partNumber AS fixStr, qryPARTNUM_ALL_1.partNumber AS maniStr, tblPASSIVATE.fileName, tblPASSIVATE.pageNum, tblPASSIVATE.fixtureNum, tblPASSIVATE.maniNum
FROM (((tblPASSIVATE LEFT JOIN refREV ON tblPASSIVATE.rev = refREV.ID) LEFT JOIN qryPARTNUM_ALL ON tblPASSIVATE.fixtureNum = qryPARTNUM_ALL.uniqID) LEFT JOIN qryPARTNUM_ALL AS qryPARTNUM_ALL_1 ON tblPASSIVATE.maniNum = qryPARTNUM_ALL_1.uniqID) INNER JOIN tblPARTNUM ON tblPASSIVATE.partNum = tblPARTNUM.ID
WHERE (((tblPARTNUM.partNum)="03-33-") AND ((tblPASSIVATE.obsolete)=False) AND ((tblPASSIVATE.[r&d])=False))
ORDER BY refREV.rev DESC;
