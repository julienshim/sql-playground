SELECT (
    SELECT MAX(price) from phones
) as max_price,
(   
    SELECT MIN(price) from phones
) as min_price,
(   
    SELECT AVG(price) from phones
) as avg_price;