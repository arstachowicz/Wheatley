SELECT uElec.linker, uElec.electrode, qryPARTNUM_ALL.partNumber
FROM (select id as linker, electrode1 as electrode from tblEP_ELECTRODE Union select id as linker, electrode2 from tblEP_ELECTRODE Union select id as linker, electrode3 from tblEP_ELECTRODE Union select id as linker, electrode4 from tblEP_ELECTRODE Union select id as linker, electrode5 from tblEP_ELECTRODE)  AS uElec INNER JOIN qryPARTNUM_ALL ON uElec.electrode = qryPARTNUM_ALL.uniqID
WHERE (((uElec.linker) = 45))
ORDER BY qryPARTNUM_ALL.partNumber;
