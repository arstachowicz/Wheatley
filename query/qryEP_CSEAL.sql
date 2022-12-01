SELECT uSEAL.linker, uSEAL.seal, qryPARTNUM_ALL.partNumber
FROM (select id as linker, CSEAL1 as seal from tblEP_CSEAL union select id as linker, CSEAL2 from tblEP_CSEAL union select id as linker, CSEAL3 from tblEP_CSEAL)  AS uSEAL INNER JOIN qryPARTNUM_ALL ON uSEAL.seal = qryPARTNUM_ALL.uniqID
WHERE (((uSEAL.linker)=267))
ORDER BY qryPARTNUM_ALL.partNumber;
