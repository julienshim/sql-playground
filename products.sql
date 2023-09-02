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
