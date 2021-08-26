SELECT *, rating * 10 as rating 
FROM movies
JOIN boxoffice on movies.id = boxoffice.movie_id;