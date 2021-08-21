SELECT *
FROM buildings
WHERE building_name in (
    SELECT building
    FROM employees
);