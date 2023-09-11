SELECT *
FROM products
ORDER BY price DESC; --ASC (Default)

SELECT *
FROM products
ORDER BY name DESC;

SELECT *
FROM products
ORDER BY price, weight DESC; -- price (ASC), weight DESC

SELECT COUNT(*) -- 50
FROM users;

SELECT *
FROM users
OFFSET 40; -- 41 through 50 (skip the first 40)

SELECT * -- records 4 through 5
FROM users
LIMIT 2 -- only give the first 2 rows of the result
OFFSET 3; -- skip the first 3 rows of the results

SELECT * -- 5 least exp
FROM products
ORDER BY price
LIMIT 5;

SELECT * -- 5 most exp
FROM products
ORDER BY price DESC
LIMIT 5;

SELECT * -- 5 most exp after the most exp
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;

(
    SELECT *
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
UNION -- ALL
(
    SELECT *
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
);

SELECT * -- same columns
FROM products
UNION
SELECT * -- same columns
FROM products;

(
    SELECT *
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
    INTERSECT -- find common item(s); remove duplicates -- ALL if multiple times in top section or bottom section
(
    SELECT *
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
);

(
    SELECT *
    FROM products
    ORDER BY price DESC
    LIMIT 4
)
EXCEPT -- find items not in latter inquiry
(
    SELECT * 
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
);

SELECT name, price
FROM products
WHERE price > 876; -- not dynamic

SELECT name, price
FROM products
WHERE price > ( -- subquery
    SELECT MAX(price)
    FROM products
    WHERE department = 'Toys'
);

SELECT name, price, (
    SELECT MAX(price) from products -- select subquery results in a single value
)
FROM products
WHERE price > 876;

SELECT name, price, (
    SELECT price
    FROM products
    WHERE id = 3 -- returns an assumed single value
) AS id_3_price -- differenciate 'price'
FROM products
WHERE price > 876;