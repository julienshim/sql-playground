SELECT MAX(p.avg_price) AS max_average_price
FROM (
    SELECT AVG(price) as avg_price
    FROM phones
    GROUP BY manufacturer
) as p;