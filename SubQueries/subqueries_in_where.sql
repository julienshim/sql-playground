SELECT id
FROM orders
WHERE product_id IN ( -- list
	SELECT id
	FROM products
	WHERE price/weight > 50 -- could've been a join with a where (similar performance)
);

SELECT name
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

SELECT name, department
FROM products
WHERE department NOT IN (
    SELECT department
    FROM products
    WHERE price < 100
);

SELECT name, department, price
FROM products
WHERE price > ALL (
	SELECT price
	FROM products
	WHERE department = 'Industrial'
);
-- WHERE price > (
-- 	SELECT MAX(price)
-- 	FROM products
-- 	WHERE department = 'Industrial'
-- );