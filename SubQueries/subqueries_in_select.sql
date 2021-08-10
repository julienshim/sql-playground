SELECT name, price, (
	SELECT MAX(price) -- subquery in select as subquery is single value
  FROM products
)
FROM products
WHERE price > 867;