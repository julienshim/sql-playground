SELECT user_id
FROM comments
GROUP BY user_id;

SELECT user_id, MAX(id) 
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(id) AS num_comments_created -- number of comments made by each user
FROM comments
GROUP BY user_id;

SELECT COUNT(user_id) FROM photos; -- null values are not counted, therefore 20
SELECT COUNT(*) FROM photos; -- 21

SELECT photo_id, COUNT(*) -- number of comments per photo
FROM comments
GROUP BY photo_id;