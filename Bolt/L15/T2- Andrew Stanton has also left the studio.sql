-- Andrew Stanton has also left the studio,
-- so please remove all movies directed by him. 

DELETE FROM movies
WHERE director = 'Andrew Stanton';