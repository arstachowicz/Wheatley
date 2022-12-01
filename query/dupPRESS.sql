SELECT tblPress.ID, tblPARTNUM.partNum, refREV.rev
FROM (tblPress INNER JOIN tblPARTNUM ON tblPress.partNum = tblPARTNUM.ID) INNER JOIN refREV ON tblPress.Rev = refREV.ID
WHERE (((tblPress.partNum)=414) AND ((tblPress.rev)=28) AND ((tblPress.obsolete)=False) AND ((tblPress.[R&D])=False));
