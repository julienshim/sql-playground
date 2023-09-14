SELECT MAX(average_price) as max_average_price
FROM (
    SELECT AVG(price) as average_price
    FROM phones
    GROUP BY manufacturer
) AS p;