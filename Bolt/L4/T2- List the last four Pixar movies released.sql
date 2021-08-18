-- List the last four Pixar movies released
-- (ordered from most recent to least) 

SELECT *
FROM movies
ORDER BY year DESC
LIMIT 4;