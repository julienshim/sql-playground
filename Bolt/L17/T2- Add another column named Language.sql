-- Add another column named Language 
-- with a TEXT data type 
-- to store the language that the movie was released in.
-- Ensure that the default for this language is English. 

ALTER TABLE movies
ADD language TEXT DEFAULT 'English';