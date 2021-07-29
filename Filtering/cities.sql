CREATE TABLE cities (
    name VARCHAR(50),
    country VARCHAR(50),
    population INTEGER,
    area INTEGER
);

INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);

INSERT INTO cities (name, country, population, area)
VALUES
    ('Delhi', 'India', 28125000, 2240),
	('Shanghai', 'China', 22125000, 4015),
    ('Sao Paulo', 'Brazil', 20935000, 3043);

-- Comparison Math Operators
-- = equal
-- > greater than
-- < less than
-- >= greater or equal
-- IN in a list
-- <= less than or equal
-- <> not equal
-- != not equal
-- BETWEEN between two values
-- NOT IN not in list

SELECT name, area FROM cities WHERE area > 4000;
SELECT name, area FROM cities WHERE area = 8223;
SELECT name, area FROM cities WHERE area != 8223;
SELECT name, area FROM cities WHERE area <> 8223;
SELECT name, area FROM cities WHERE area BETWEEN 2000 AND 4000;
SELECT name, area FROM cities WHERE name IN ('Delhi', 'Shanghai');
SELECT name, area FROM cities WHERE name NOT IN ('Delhi', 'Shanghai');
SELECT name, area FROM cities WHERE area NOT IN (3043, 8223);
SELECT name, area FROM cities WHERE area NOT IN (3042, 8223) AND name = 'Delhi';
SELECT name, area FROM cities WHERE area NOT IN (3042, 8223) OR name = 'Delhi';
SELECT name, area FROM cities WHERE population / area > 6000;