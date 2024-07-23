SELECT CITY.Name  FROM CITY 
JOIN COUNTRY 
ON CITY.CountryCode=COUNTRY.Code
where COUNTRY.Continent = 'Africa';
