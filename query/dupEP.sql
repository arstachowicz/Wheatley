SELECT tblEP.ID, tblEP.partNum, tblEP.rev, tblEP.obsolete, tblEP.[R&D], tblPARTNUM.partNum, refREV.rev
FROM (tblEP LEFT JOIN tblPARTNUM ON tblEP.partNum = tblPARTNUM.ID) LEFT JOIN refREV ON tblEP.Rev = refREV.ID
WHERE (((tblEP.partNum)=888) AND ((tblEP.rev)=28) AND ((tblEP.obsolete)=False) AND ((tblEP.[R&D])=False));
