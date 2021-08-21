SELECT *
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;