SELECT *
FROM users
OFFSET 40; -- skip first 40

SELECT *
FROM products
ORDER by price -- DESC (most expensive)
LIMIT 5; -- limit first (convension)
-- OFFSET 1 (except the most expensive)