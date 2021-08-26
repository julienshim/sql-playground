-- Select the 3 users with the highest IDs from the users table

SELECT *
FROM users
ORDER BY id DESC
LIMIT 3;

-- Join the users and posts table. 
-- Show the username of user ID 200 and the captaions of all posts they have created.

SELECT username, caption
FROM users
JOIN posts ON users.id = posts.user_id
WHERE users.id = 200; -- WHERE posts.user_id = 200;

-- Show each username and the number of 'likes' that they have created

SELECT username, COUNT(*)
FROM users
JOIN likes ON users.id = likes.user_id
GROUP BY username;