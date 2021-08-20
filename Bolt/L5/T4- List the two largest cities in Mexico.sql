-- List the two largest cities in Mexico
-- (by population) 

SELECT * FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;