WITH Nikk AS  (Select POWER(min(LAT_N)-Max(LAT_N),2) as P_1  , POWER(min(LONG_W)-Max(LONG_W),2) as P_2 from STATION) ,
sann as (Select SQRT(P_1+P_2) as map from Nikk)
select Round(map,4) from sann
