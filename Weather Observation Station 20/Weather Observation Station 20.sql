SET @total = (SELECT COUNT(*) FROM station);
SET @limitValue = IF(MOD(@total, 2) = 0, 2, 1);
SET @offsetValue = FLOOR(@total / 2);

SET @query = CONCAT('SELECT ROUND(lat_n, 4) FROM station ORDER BY station.lat_n LIMIT ', @limitValue, ' OFFSET ', @offsetValue);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;



/*SET @total = (SELECT COUNT(*) FROM station);
SET @limitValue = IF(MOD(@total, 2) = 0, 2, 1);
SET @offsetValue = FLOOR(@total / 2);
SET @query ='SELECT ROUND(lat_n, 4) FROM station ORDER BY station.lat_n LIMIT ? OFFSET ?';
PREPARE stmt FROM @query;
EXECUTE stmt USING @limitValue, @offsetValue;
DEALLOCATE PREPARE stmt;





/*
SET @total = (SELECT count(*) FROM station);
SET @limitValue = IF(MOD(@total, 2) = 0, 2, 1);
SET @offsetValue = FLOOR(@total / 2);

Prepare stmt From "SELECT round(lat_n, 4)
FROM station
ORDER BY station.lat_n
LIMIT ? OFFSET ?;"
Execute STMT Using @limitValue, @offsetValue;
DEALLOCATE PREPARE stmt;
