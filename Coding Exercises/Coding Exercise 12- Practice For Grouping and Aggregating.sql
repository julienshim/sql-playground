SELECT author_id, count(*)
FROM books
GROUP BY author_id;