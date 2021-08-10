(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
INTERSECT -- ALL (if multiple times in each section)
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);