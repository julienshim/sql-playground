SELECT *
FROM products
ORDER BY price DESC; --ASC (Default)

SELECT *
FROM products
ORDER BY name DESC;

SELECT *
FROM products
ORDER BY price, weight DESC; -- price (ASC), weight DESC

SELECT COUNT(*) -- 50
FROM users;

SELECT *
FROM users
OFFSET 40; -- 41 through 50 (skip the first 40)

SELECT * -- records 4 through 5
FROM users
LIMIT 2 -- only give the first 2 rows of the result
OFFSET 3; -- skip the first 3 rows of the results

SELECT * -- 5 least exp
FROM products
ORDER BY price
LIMIT 5;

SELECT * -- 5 most exp
FROM products
ORDER BY price DESC
LIMIT 5;

SELECT * -- 5 most exp after the most exp
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;
