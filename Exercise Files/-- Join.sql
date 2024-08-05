-- Join
--inner join : and between tables; match in both tables
--outer join/left outer join : all rows from both tables
--right join/right outer join : all the rows from the right table and the matched rows from the left table
SELECT
    c.LastName,
    c.FirstName,
    i.InvoiceId,
    i.CustomerId,
    i.InvoiceDate,
    i.Total
FROM
    Invoice AS i
INNER JOIN
    Customer AS c
ON
    i.CustomerId= c.CustomerId
ORDER By c.CustomerId