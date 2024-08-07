select sum(CITY.population) from CITY join COUNTRY
ON CITY.CountryCode=COUNTRY.Code
where CONTINENT = "Asia"
