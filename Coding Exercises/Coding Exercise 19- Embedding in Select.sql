SELECT name, price, price / (
    SELECT MAX(price)
    FROM phones
) as price_ratio
FROM phones;