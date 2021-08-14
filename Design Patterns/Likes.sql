-- # of likes on post with id = 3
SELECT COUNT(*)
FROM likes
WHERE post_id = 3;

-- id of top five most liked posts
SELECT posts.id
FROM posts
JOIN likes on liks.post_id = posts.id
GROUP BY posts.id 
ORDER BY count(*) DESC
LIMIT 5;

-- username of people who like post with id=3
SELECT username
FROM likes
JOIN users ON users.id = likes.user_id
WHERE post_id = 3;

-- url of posts that user with id = 4 liked
SELECT url
FROM likes
JOIN users.id = likes.post_id
WHERE likes.user_id = 4;