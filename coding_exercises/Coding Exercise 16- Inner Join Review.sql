SELECT first_name, last_name, paid
FROM users
JOIN orders -- LEFT JOIN
ON users.id = orders.user_id; 