SELECT manufacturer
FROM phones
WHERE price < 170
UNION
SELECT manufacturer -- , count(*) not necessary
FROM phones
GROUP BY manufacturer
HAVING count(*) > 2;

-- No parentheses needed for this exercise