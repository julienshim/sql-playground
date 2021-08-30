-- Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, 
-- and made 340 million domestically and 270 million internationally.
-- Add the record to the BoxOffice table. 

SELECT *, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = 'Engineer';