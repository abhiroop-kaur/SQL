-- view 
--saving and resuing tables

CREATE VIEW V_avgTotal AS
SELECT
    round(avg(Total),2) As [averrage]
FROM
Invoice
-- drop view to delete