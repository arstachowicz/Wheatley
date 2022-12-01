SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber, qryPARTNUM_ALL.linkedID
FROM qryPARTNUM_ALL
WHERE (((qryPARTNUM_ALL.uniqID) = "A385") And ((qryPARTNUM_ALL.partNumber) <> "01-10-0385")) Or (((qryPARTNUM_ALL.partNumber) <> "01-10-0385") And ((qryPARTNUM_ALL.linkedID) = "A385"))
ORDER BY qryPARTNUM_ALL.partNumber;
