CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER,
	weight INTEGER
);

INSERT INTO products (name, department, price, weight)
VALUES
	('Shirt', 'Clothes', 20, 1);

INSERT INTO products (name, department, weight)
VALUES
	('Pants', 'Clothes', 3); -- null value

UPDATE products
SET price = 9999
WHERE price IS NULL;

ALTER TABLE products 
ALTER COLUMN price -- cannot alter if null exists
SET NOT NULL;

INSERT INTO products (name, department, weight) -- error
VALUES ('Shoes', 'Clothes', 5);