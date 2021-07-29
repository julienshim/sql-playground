SELECT contents, username
FROM COMMENTS
JOIN users on users.id = comments.user_id;

SELECT contents, url
FROM comments
JOIN photos on photos.id = comments.photo_id;

SELECT comments.id as comment_id, p.id
FROM photos as pariatur --(FROM photos p)
JOIN comments ON p.id = comments.photo_id;