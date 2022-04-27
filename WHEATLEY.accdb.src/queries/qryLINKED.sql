SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber, qryPARTNUM_ALL.linkedID
FROM qryPARTNUM_ALL
WHERE (((qryPARTNUM_ALL.uniqID)="A407") AND ((qryPARTNUM_ALL.partNumber)<>"01-10-0407")) OR (((qryPARTNUM_ALL.partNumber)<>"01-10-0407") AND ((qryPARTNUM_ALL.linkedID)="A407"))
ORDER BY qryPARTNUM_ALL.partNumber;
