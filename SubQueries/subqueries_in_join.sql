SELECT first_name
FROM users
JOIN ( -- compatible with ON
    SELECT user_id
    FROM orders
    WHERE product_id = 3
) as o
ON o.user_id = users.id;

-- not very useful consider the following:

SELECT first_name
FROM users
JOIN orders
ON orders.user_id = users.id
WHERE orders.product_id = 3;