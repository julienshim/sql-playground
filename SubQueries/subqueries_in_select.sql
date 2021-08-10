SELECT name, price, (
	SELECT MAX(price) -- subquery in select as subquery is single value
  FROM products
)
FROM products
WHERE price > 867;

SELECT name, price, (
	SELECT price
    FROM products
    WHERE id = 3
) AS id_3_price
FROM products
WHERE price > 867;