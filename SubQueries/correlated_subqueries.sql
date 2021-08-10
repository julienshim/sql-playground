SELECT name, department, price
FROM products as p1
WHERE p1.price = ( -- p1. is being explicit
    SELECT MAX(price)
    FROM products AS p2
    WHERE p2.department = p1.department
);