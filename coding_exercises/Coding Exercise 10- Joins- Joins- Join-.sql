SELECT title, name
FROM authors
LEFT JOIN books
ON authors.id = books.author_id;

-- alternative

SELECT title, name
FROM books
RIGHT JOIN authors
ON authors.id = books.author_id;