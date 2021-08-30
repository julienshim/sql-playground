-- Find the number of Artists in the studio
-- (without a HAVING clause) 

SELECT count(*)
FROM employees
WHERE role = 'Artist';