SELECT *, SUM(years_employed)
FROM employees
GROUP BY building;