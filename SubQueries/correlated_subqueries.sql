SELECT name, department, price
FROM products as p1
WHERE p1.price = ( -- p1. is being explicit
    SELECT MAX(price)
    FROM products AS p2
    WHERE p2.department = p1.department
);

SELECT p1.name, ( -- p1.name to eliminate ambiguity
	SELECT COUNT(*)
	FROM orders as o1
	WHERE o1.product_id = p1.id
) AS num_orders
FROM products AS p1;
