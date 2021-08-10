SELECT name, price
FROM phones
WHERE price > (
    SELECT price
    FROM phones
    WHERE name = 'S5620 Monte'
);