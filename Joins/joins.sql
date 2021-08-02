SELECT contents, username
FROM COMMENTS
JOIN users on users.id = comments.user_id;

SELECT contents, url
FROM comments
JOIN photos on photos.id = comments.photo_id;

SELECT comments.id as comment_id, p.id
FROM photos as pariatur --(FROM photos p)
JOIN comments ON p.id = comments.photo_id;

-- INSERT INTO photos (url, user_id)
-- VALUES ('https://banner.jpg', NULL);

INSERT INTO users (username)
VALUES ('Nicole');

SELECT url, username
FROM photos
-- JOIN users on users.id = photos.user_id;
-- LEFT JOIN users on users.id = photos.user_id;
-- RIGHT JOIN users on users.id = photos.user_id;
FULL JOIN users on users.id = photos.user_id;

SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;

SELECT url, contents, username
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;