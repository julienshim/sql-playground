(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
EXCEPT -- remove from left what exists in the right (order matters)
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);