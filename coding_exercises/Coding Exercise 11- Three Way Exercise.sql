SELECT title, name, rating
FROM books
JOIN authors
    ON books.author_id = authors.id
JOIN reviews
    ON reviews.book_id = books.id AND reviews.reviewer_id = authors.id;

-- alternative

SELECT title, name, rating
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;