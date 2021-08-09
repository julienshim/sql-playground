(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION -- ALL (do not remove duplicates)
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);