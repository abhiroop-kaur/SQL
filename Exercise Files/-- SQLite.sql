-- SQLite
--query pane
/*
created by abhiroop kaur
date july 2, 2027
just working around some databases
*/

--list of customers in databases first name , lastname 
SELECT
    FirstName AS [Customer FirstName],
    LastName AS [Customer LastName], 
    Email AS EMAIL
FROM 
    Customer
ORDER BY
    LastName ASC,
    FirstName DESC
LIMIT 10
