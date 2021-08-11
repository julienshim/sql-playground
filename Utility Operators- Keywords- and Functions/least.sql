SELECT LEAST(1, 20, 50, 100); -- 1
SELECT LEAST(1000, 20, 50, 100); -- 20

SELECT name, price, LEAST(price * 0.5, 400) -- 1/2 price or $400 which ever is least
FROM products;