SELECT name, manufacturer FROM phones WHERE manufacturer IN ('Apple', 'Samsung');

-- alternative
SELECT name, manufacturer FROM phones WHERE manufacturer = 'Apple' OR manufacturer = 'Samsung';