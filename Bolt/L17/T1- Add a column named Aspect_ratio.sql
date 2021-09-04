-- Add a column named Aspect_ratio
-- with a FLOAT data type
-- to store the aspect-ratio each movie was released in. 

ALTER TABLE movies
ADD column aspect_ratio FLOAT;