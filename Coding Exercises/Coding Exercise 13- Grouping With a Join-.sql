SELECT name, COUNT(*)
FROM authors
JOIN books WHERE books.author_id = authors.id
GROUP BY name; -- GROUP BY authors.name