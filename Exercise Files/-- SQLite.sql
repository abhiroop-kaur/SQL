-- SQLite
--% means idc what comes next
SELECT
    InvoiceDate,
    BillingAddress,
    BillingCity,
    Total,
    CASE
        WHEN Total<2.00 THEN 'Baseline Purchase'
        WHEN Total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
        WHEN Total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
        ELSE 'Top Performer'
        END AS PurchaseType
FROM
    Invoice
WHERE
    --Total IN (1.98, 3.96) --or
    --BETWEEN 1.98 AND 5.00
    --BillingCity IN ('Brussels','Orlando', 'Paris')
    --BillingCity LIKE 'B%' cities starting with B
    --BillingCity LIKE '%B%'  b anywhere in name
    --InvoiceDate = '2010-05-22 00:00:00'
    --(BillingCity  LIKE 'P%'OR BillingCity  LIKE 'D%')
    --AND Total> 1.98

    --DATE(InvoiceDate )> '2010-05-22'
    --AND
    --Total<3.00
    PurchaseType = 'Top Performer'

ORDER BY
    BillingCity