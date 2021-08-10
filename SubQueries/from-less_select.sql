SELECT (
    SELECT MAX(price) FROM products -- subquery resulting in one single value
) / (
    -- SELECT MIN(price) FROM products
    SELECT AVG(price) from products
);

SELECT (
    SELECT MAX(price) FROM products
),
(
    SELECT AVG(price) FROM products
);