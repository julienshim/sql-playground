-- SELECT DISTINCT department
SELECT COUNT(DISTINCT department)
FROM products;

SELECT DISTINCT department, name -- cannot run count on multiple columsn
FROM products;