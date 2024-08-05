-- SQL Functions
-- string :- concatenating || joing two separte fields
-- x || ' ' || y...
--trucate --shortern 
-- length(xyz) 


SELECT
    FirstName,
    length(Firstname),
    substr(FirstName,1,5) AS [5 digit code],
    upper(FirstName) AS [First Name All caps],
    lower(FirstName)
FROM
    Customer
ORDER BY
    length(Firstname)
