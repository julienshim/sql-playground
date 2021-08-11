SELECT GREATEST(20, 10, 30); -- 30
SELECT GREATEST(200, 10, 30); -- 200

SELECT name, weight, GREATEST(30, 2 * weight) -- $30 or $2  times weight
FROM products;
