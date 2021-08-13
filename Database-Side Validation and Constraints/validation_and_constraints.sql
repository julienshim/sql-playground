-- null constriants

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

-- default value

ALTER TABLE products 
ALTER COLUMN price
SET DEFAULT 999;

INSERT INTO products (name, department, weight)
VALUES ('Gloves', 'Tools', 1);

-- unique constraints one column

ALTER TABLE products
ADD UNIQUE (name); -- name in parenthese / all values have to be unique

INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Tools', 24, 1);

-- unique constraints multicolumn

ALTER TABLE products 
DROP CONSTRAINT products_name_key;

ALTER TABLE products 
ADD UNIQUE (name, department);

INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Housewares', 24, 1); -- successful / different department

INSERT INTO products (name, department, price, weight)
VALUES ('Shirt', 'Clothes', 24, 1); -- error

ALTER TABLE products
DROP CONSTRAINT products_name_department_key;

-- validation check

ALTER TABLE products 
ADD CHECK (price > 0);

INSERT INTO products (name, department, price, weight)
VALUES ('Belt', 'Clothes', -99, 1); -- error