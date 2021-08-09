SELECT paid, count(*)
FROM orders
GROUP BY paid;