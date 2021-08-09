SELECT *
FROM products
-- ORDER BY price;
ORDER BY price DESC; -- ASC default

SELECT *
FROM products
-- ORDER BY name;
ORDER BY name DESC;

SELECT *
FROM products
ORDER BY price, weight;