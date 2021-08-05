SELECT MAX(id) -- 100
FROM comments;

SELECT MIN(id) -- 1
FROM comments;

SELECT AVG(id) -- 50.5
FROM comments;

SELECT SUM(id) -- 5050
FROM comments;

SELECT COUNT(id) -- 100
FROM comments;

-- Cannot select id at the same time. Usually by themselves or a part of a larger group by statement.