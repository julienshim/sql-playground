-- List the third and fourth largest cities
-- (by population)
-- in the United States
-- and their population 

SELECT *
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2
OFFSET 2;