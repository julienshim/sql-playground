SELECT name, price * units_sold AS total_revenue
FROM phones
WHERE price * units_sold > 1000000;