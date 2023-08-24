SELECT title, name
FROM books
JOIN authors
ON books.author_id = authors.id;