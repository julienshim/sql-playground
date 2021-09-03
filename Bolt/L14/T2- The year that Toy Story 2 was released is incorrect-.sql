-- The year that Toy Story 2 was released is incorrect,
-- it was actually released in 1999

UPDATE movies
SET year = 1999
WHERE id = 3;