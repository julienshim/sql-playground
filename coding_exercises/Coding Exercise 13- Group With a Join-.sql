SELECT name, COUNT(*)
FROM books
JOIN authors ON books.author_id == authors.id
GROUP BY name; -- authors.name if more specific