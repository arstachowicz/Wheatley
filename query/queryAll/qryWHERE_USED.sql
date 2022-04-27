SELECT tblPARTNUM.ID, tblPARTNUM.partNum, refREV.rev, IIf([obso]=0,"","Obsolete") AS obsol, qryPARTNUM_ALL.partType, qryPARTNUM_ALL.subcategory, qryPARTNUM_ALL.locName, UQ.tbl
FROM qryPARTNUM_ALL INNER JOIN (((SELECT tblEP.partNum as talonPart, uSEAL.seal as sID, tblEP.Rev as Rev, tblEP.obsolete as obso, "tblEP" as tbl FROM (select id as linker, cseal1 as seal from tblEP_CSEAL union select id, cseal2 as seal from tblEP_CSEAL union select id, cseal3 as seal from tblEP_CSEAL)   AS uSEAL INNER JOIN tblEP ON uSEAL.linker = tblEP.csealLink WHERE (((isNull([seal])) = false))     UNION  SELECT tblEP.partNum, uELEC.elec, tblEP.Rev, tblEP.obsolete, "tblEP" FROM (select id as linker, electrode1 as elec from tblEP_ELECTRODE union select id, electrode2  from tblEP_ELECTRODE union select id, electrode3  from tblEP_ELECTRODE union select id, electrode4  from tblEP_ELECTRODE union select id, electrode5  from tblEP_ELECTRODE union select id, groundElectrode from tblEP_ELECTRODE)  AS uELEC INNER JOIN tblEP ON uELEC.linker = tblEP.elecLink WHERE (((isNull([elec])) = false))  UNION  SELECT tblEP.partNum, uMISC.idMisc, tblEP.Rev, tblEP.obsolete, "tblEP" FROM (select id as linker, eleSleeve1 as idMisc from tblEP_MISC union select id, eleSleeve2  from tblEP_MISC union select id, eleSleeve3  from tblEP_MISC union select id, eleSleeve4  from tblEP_MISC union select id, eleSleeve5  from tblEP_MISC union select id, eleCap1 from tblEP_MISC union select id, misc1 from tblEP_MISC union select id, misc2 from tblEP_MISC union select id, misc3 from tblEP_MISC union select id, misc4 from tblEP_MISC union select id, misc5 from tblEP_MISC union select id, SPACER1 from tblEP_MISC union select id, spacer2 from tblEP_MISC)  AS uMISC INNER JOIN tblEP ON uMISC.linker = tblEP.elecLink WHERE (((IsNull([idmisc]))=False))  UNION  SELECT tblEP.partNum, uHalf.partID, tblEP.Rev, tblEP.obsolete, "tblEP" FROM (select id as epID, capNum as partID from tblEP union select id, basenum from tblEP)  AS uHalf INNER JOIN tblEP ON uHalf.epID = tblEP.ID  UNION  SELECT tblPRESS.partNum, uPRESS.idPart, tblPRESS.rev, tblPRESS.obsolete, "tblPRESS" FROM (select id as linker, partTop as idPart from tblPRESS union select id, partBot from tblPRESS union select id, partTOOL1 from tblPRESS union select id, partTOOL2 from tblPRESS union select id, partTOOL3 from tblPRESS union select id, partMISC from tblPRESS)  AS uPRESS INNER JOIN tblPRESS ON uPRESS.linker = tblPRESS.ID WHERE (((IsNull([IDPart]))=False))  union  SELECT tblLEAK_CHECK.partNum, uLEAK.idPart, tblLEAK_CHECK.rev, tblLEAK_CHECK.obsolete, "tblLEAK_CHECK" FROM (select autoid as linker, topNum as idPart from tblLEAK_CHECK union select autoid, bottomNum from tblLEAK_CHECK union select autoid, maniNum1 from tblLEAK_CHECK union select autoid, maniNum2 from tblLEAK_CHECK union select autoid, miscNum1 from tblLEAK_CHECK union select autoid, miscNum2 from tblLEAK_CHECK union select autoid, miscNum3 from tblLEAK_CHECK union select autoid, miscNum4 from tblLEAK_CHECK union select autoid, miscNum5 from tblLEAK_CHECK)  AS uLEAK INNER JOIN tblLEAK_CHECK ON uLEAK.linker = tblLEAK_CHECK.autoID WHERE (((IsNull([IDPart]))=False)) union SELECT tblEP_BATHE.partNum, uBATH.idPart, tblEP_BATHE.rev, tblEP_BATHE.obsolete, "tblEP_BATHE"  FROM (select ID as linker, assemblyID as idPart from tblEP_BATHE union select ID, base1 from tblEP_BATHE union select ID, base2 from tblEP_BATHE union select ID, grndElec1 from tblEP_BATHE union select ID, grndElec2 from tblEP_BATHE)  AS uBATH INNER JOIN tblEP_BATHE ON uBATH.linker = tblEP_BATHE.ID WHERE (((IsNull([IDPart]))=False)) )  AS UQ LEFT JOIN refREV ON UQ.Rev = refREV.ID) INNER JOIN tblPARTNUM ON UQ.talonPart = tblPARTNUM.ID) ON qryPARTNUM_ALL.uniqID = UQ.sID
WHERE (((qryPARTNUM_ALL.linkedID)=[uq]![sID])) OR (((qryPARTNUM_ALL.partNumber)="01-50-0020"))
ORDER BY tblPARTNUM.partNum, refREV.rev;
