SELECT paid, COUNT(*)
FROM orders
GROUP BY paid;