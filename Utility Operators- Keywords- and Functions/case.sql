SELECT
    name,
    price,
    CASE
        WHEN price > 600 THEN 'high'
        WHEN price > 400 THEN 'medium'
        ELSE 'cheap'
    END
FROM products;