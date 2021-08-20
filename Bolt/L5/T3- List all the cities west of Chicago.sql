-- List all the cities west of Chicago,
-- ordered from west to east 

SELECT *
FROM north_american_cities 
WHERE longitude < (
    SELECT longitude
    FROM north_american_cities
    WHERE city = "Chicago"
) 
ORDER BY longitude;