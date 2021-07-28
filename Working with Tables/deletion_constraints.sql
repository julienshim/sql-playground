DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(50)
);

INSERT INTO users (username)
VALUES
	('monahan93'),
    ('pferrer'),
	('si93onis'),
	('99stroman');

DROP TABLE IF EXISTS photos;
    
CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    -- user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
    
INSERT INTO photos (url, user_id)
VALUES
    ('http:/one.jpg', 4),
    ('http:/two.jpg', 1),
    ('http:/25.jpg', 1),
    ('http:/36.jpg', 1),
    ('http:/754.jpg', 2),
    ('http:/35.jpg', 3),
    ('http:/256.jpg', 4);

-- DELETE FROM users WHERE id = 1;
DELETE FROM users WHERE id = 4;

SELECT * FROM photos;