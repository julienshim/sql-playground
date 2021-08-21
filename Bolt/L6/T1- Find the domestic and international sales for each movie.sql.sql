SELECT *
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id;