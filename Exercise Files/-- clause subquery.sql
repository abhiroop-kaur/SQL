-- clause subquery
-- city average against global avergae 
SELECT
InvoiceDate,
avg(Total) As [city average],
(SELECT  avg(Total) 
FROM
Invoice) As [global Average],
BillingAddress,
BillingCity,
Total

FROM
Invoice
--WHERE
--Total<( select --sub query
--            avg(Total) 
--        from 
--            Invoice)
GROUP BY
BillingCity
ORDER BY
Total desc
