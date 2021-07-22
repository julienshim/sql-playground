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

SELECT * FROM cities;
SELECT name, country FROM cities;
SELECT name, population FROM cities;
SELECT area, name, population from cities;
SELECT name, name, name FROM cities;

-- Math Operators
-- + add
-- - subtract
-- * multiply
-- / divide
-- ^ exponent
-- |/ square root
-- @ absolute value
-- % remainder

SELECT name, population / area FROM cities; -- ?column?
SELECT name, population / area AS population_density
FROM cities;

-- String Operators and Functions
-- || join two strings
-- CONCAT() join two strings
-- LOWER() gives a lower case string
-- LENGTH() gives number of characters in a string
-- UPPER() gives an upper case string

SELECT name || ', ' || country AS location
FROM cities;

SELECT CONCAT(name, ', ', country) AS location
FROM cities;