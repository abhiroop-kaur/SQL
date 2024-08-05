-- join2
--joining more than 1 tables
SELECT 
    e.FirstName,
    e.LastName,
    c.FirstName,
    c.LastName,
    c.SupportRepId,
    i.CustomerId,
    i.Total
FROM
    Invoice AS i
INNER JOIN
    Customer AS c 
ON --exact fields
    i.CustomerId = c.CustomerId
INNER JOIN
    Employee AS e 
ON 
    c.SupportRepId=e.EmployeeId
ORDER BY
    i.Total DESC
LIMIT 10