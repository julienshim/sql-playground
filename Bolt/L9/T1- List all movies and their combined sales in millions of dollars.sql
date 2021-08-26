SELECT *, (domestic_sales + international_sales) / 1000000 as combined_sales 
FROM movies
JOIN boxoffice on movies.id = boxoffice.movie_id;