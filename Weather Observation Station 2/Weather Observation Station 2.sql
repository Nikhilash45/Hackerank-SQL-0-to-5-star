WITH Nikhil AS (
    SELECT SUM(LAT_N) AS Lati, SUM(LONG_W) AS Longi
    FROM STATION
)
SELECT ROUND(Lati, 2) AS Rounded_Lati, ROUND(Longi, 2) AS Rounded_Longi
FROM Nikhil;
