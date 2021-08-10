SELECT name
FROM phones
WHERE price > ALL (
    SELECT price
    FROM phones
    WHERE manufacturer = 'Samsung'
);