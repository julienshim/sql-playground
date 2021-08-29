SELECT *, AVG(years_employed)
FROM employees
GROUP BY role;