SELECT name, price_weight_ratio
FROM ( -- outer select must be compatible
	SELECT name, price/weight as price_weight_ratio
	FROM products
) AS p -- alias is necessary
WHERE price_weight_ratio > 5;

SELECT *
FROM (
	SELECT MAX(price) FROM products
) as p;

SELECT AVG(p.order_count) -- p. in p.order_count not necessary
FROM (
  SELECT user_id, COUNT(*) AS order_count -- integer
  FROM orders
  GROUP BY user_id 
) AS p;