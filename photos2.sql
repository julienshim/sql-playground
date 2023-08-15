-- For each comment, show the contents of the comment and the username of the user who wrote the comment

SELECT contents, username 
FROM comments 
JOIN users 
ON users.id = comments.user_id;

-- For each comment, list the contents of the comment and the URL of the photo the comment was added to

SELECT contents, url 
FROM comments 
JOIN photos 
ON photos.id = comments.photo_id;


SELECT comments.id as comment_id, p.id as photo_id 
FROM comments 
JOIN photos AS p
ON p.id = comments.photo_id;

-- Show EACH photo url and the username of the poster

SELECT url, username 
FROM photos 
JOIN users -- inner join
ON users.id = photos.user_id;

INSERT INTO photos (url, user_id)
VALUES
	('https://banner.jpg', NULL);

SELECT url, username 
FROM photos 
LEFT JOIN users
ON users.id = photos.user_id;

INSERT INTO users (username)
VALUES
	('Nicole');

SELECT url, username 
FROM photos 
RIGHT JOIN users
ON users.id = photos.user_id;

-- Users can comment on photos that they posted. List the url and content sfor every photo/comment where this occured.
-- Who is commenting on their own photos?

SELECT url, contents
FROM comments
JOIN photos
ON comments.photo_id = photos.id
WHERE comments.user_id = photos.user_id;

SELECT url, contents, username
FROM comments
JOIN photos
ON comments.photo_id = photos.id
JOIN users
ON comments.user_id = users.id AND photos.user_id = users.id
WHERE comments.user_id = photos.user_id;

-- GROUP BY / AGGREGATE

SELECT user_id
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(id) AS num_comments_created -- the number of comments made by a user
FROM comments
GROUP BY user_id;

SELECT COUNT(user_id) FROM photos; -- 20 without null
SELECT COUNT(*) FROM photos; -- 21 including null

SELECT user_id, COUNT(*) -- deal with null values
FROM comments
GROUP BY user_id;

SELECT photo_id, COUNT(*) -- count comments per photo
FROM comments
GROUP BY photo_id;

SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;

SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id < 50
GROUP BY user_id
HAVING COUNT(*) > 20;