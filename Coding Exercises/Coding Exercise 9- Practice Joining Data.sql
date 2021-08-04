SELECT title, name
FROM books
JOIN authors on books.author_id = authors.id;