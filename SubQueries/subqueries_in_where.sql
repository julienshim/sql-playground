SELECT id
FROM orders
WHERE product_id IN ( -- list
	SELECT id
	FROM products
	WHERE price/weight > 50 -- could've been a join with a where (similar performance)
)

SELECT name
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);