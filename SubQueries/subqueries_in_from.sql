SELECT name, price_weight_ratio
FROM (
	SELECT name, price/weight as price_weight_ratio
	FROM products
) AS p -- alias is necessary
WHERE price_weight_ratio > 5;