SELECT contents, username
FROM COMMENTS
JOIN users on users.id = comments.user_id;

SELECT contents, url
FROM comments
JOIN photos on photos.id = comments.photo_id;