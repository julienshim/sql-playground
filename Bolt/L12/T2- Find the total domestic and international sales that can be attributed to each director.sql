SELECT *, SUM(domestic_sales + international_sales)
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
GROUP BY director;