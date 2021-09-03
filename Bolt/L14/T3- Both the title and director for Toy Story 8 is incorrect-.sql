-- Both the title and director for Toy Story 8 is incorrect! 
-- The title should be "Toy Story 3" and it was directed by Lee Unkrich

UPDATE movies
SET title = 'Toy Story 3', director = 'Lee Unkrich'
WHERE id = 11;