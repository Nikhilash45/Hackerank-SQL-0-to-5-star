WITH 
CTE_MinLat AS (
    SELECT ID, LAT_N 
    FROM Station 
    WHERE LAT_N = (SELECT MIN(LAT_N) FROM Station)
),
CTE_MinLong AS (
    SELECT ID, LONG_W  
    FROM Station 
    WHERE LONG_W = (SELECT MIN(LONG_W) FROM Station)
),
CTE_MaxLat AS (
    SELECT ID, LAT_N 
    FROM Station 
    WHERE LAT_N = (SELECT MAX(LAT_N) FROM Station)
),
CTE_MaxLong AS (
    SELECT ID, LONG_W  
    FROM Station 
    WHERE LONG_W = (SELECT MAX(LONG_W) FROM Station)
)
SELECT 
    ROUND(ABS(MinLat.LAT_N - MaxLat.LAT_N) + ABS(MinLong.LONG_W - MaxLong.LONG_W), 4) AS Result
FROM 
    CTE_MinLat MinLat,
    CTE_MinLong MinLong,
    CTE_MaxLat MaxLat,
    CTE_MaxLong MaxLong;
