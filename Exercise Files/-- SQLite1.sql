-- SQLite1
--
SELECT 
    t.Name AS [TrackNames],
    t.UnitPrice AS [Price]
FROM 
    TRACK AS t
ORDER BY
    t.Name
LIMIT 20;