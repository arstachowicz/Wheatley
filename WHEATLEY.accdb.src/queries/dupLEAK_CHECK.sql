SELECT tblLEAK_CHECK.autoID, tblPARTNUM.partNum, refREV.rev
FROM (tblLEAK_CHECK INNER JOIN tblPARTNUM ON tblLEAK_CHECK.partNum = tblPARTNUM.ID) INNER JOIN refREV ON tblLEAK_CHECK.Rev = refREV.ID
WHERE (((tblLEAK_CHECK.partNum)=793) AND ((tblLEAK_CHECK.rev)=27) AND ((tblLEAK_CHECK.obsolete)=False) AND ((tblLEAK_CHECK.[R&D])=False));
