SELECT title, name
FROM authors
LEFT JOIN books ON authors.id = books.author_id;

-- alt
-- SELECT title, name
-- FROM books
-- RIGHT JOIN authors ON books.author_id = authors.id;