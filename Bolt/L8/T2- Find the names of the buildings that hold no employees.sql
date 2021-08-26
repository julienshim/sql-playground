SELECT * FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building
GROUP BY building_name
HAVING building IS NULL;
