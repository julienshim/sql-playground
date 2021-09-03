-- This database is getting too big,
-- lets remove all movies that were released before 2005

DELETE FROM movies
WHERE year < 2005;