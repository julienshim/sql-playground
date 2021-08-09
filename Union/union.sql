(
  SELECT * -- matching column names and data types
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION -- ALL (do not remove duplicates)
( -- parentheses important to make keyword application clear
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);