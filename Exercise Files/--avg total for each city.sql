--avg total for each city
-- with name l 
--greater than 5$
SELECT
BillingCountry,
BillingCity,
round(avg(Total),2)

FROM
Invoice
--WHERE(for non aggregate data)
--BillingCity LIKE 'L%'
GROUP BY
BillingCountry, BillingCity

HAVING
avg(Total)>5

ORDER BY
BillingCountry