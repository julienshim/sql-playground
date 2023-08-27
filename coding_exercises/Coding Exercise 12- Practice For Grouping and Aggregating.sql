SELECT author_id, COUNT(*)
FROM books
GROUP BY author_id;