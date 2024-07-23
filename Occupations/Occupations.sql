SELECT 
    MIN(if(Occupation="Doctor", name , Null)) AS doctor,
    MIN(if(Occupation="Professor", name , Null)) AS Professor,
    MIN(if(Occupation="Singer", name , Null)) AS Singer,
    MIN(if(Occupation="Actor", name , Null)) AS Actor
FROM (
    SELECT 
        name, 
        OCCUPATION, 
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY name) AS row_num
    FROM 
        OCCUPATIONS
) AS ord 
GROUP BY row_num;
