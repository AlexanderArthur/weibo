use weibo;

DROP TABLE IF EXISTS users;
CREATE TABLE users(user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, username VARCHAR(20), password VARCHAR(20), email VARCHAR(40));
INSERT INTO users(user_id, username, password, email) VALUES (1, 'Alex', '12345', '2498951127@qq.com');
INSERT INTO users(user_id, username, password, email) VALUES (2, 'Bob', '54321', 'endershadows@163.com');
INSERT INTO users(user_id, username, password, email) VALUES (3, 'Cindy', 'admin', 'endershadowsconcept@outlook.com');

DROP TABLE IF EXISTS recommendPosts;
CREATE TABLE recommendPosts(recommendP_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(20), content VARCHAR(100), media VARCHAR(100), link VARCHAR(100));
INSERT INTO recommendPosts(recommendP_id, title, content, media, link) VALUES (1, 'RecommendPost1', 'First recommend post trial', 'http://localhost:8080/images/recommendPost1.jpg', '');
INSERT INTO recommendPosts(recommendP_id, title, content, media, link) VALUES (2, 'RecommendPost2', 'Second recommend post trial', 'http://localhost:8080/images/recommendPost2.jpg', '');

DROP TABLE IF EXISTS recentPosts;
CREATE TABLE recentPosts(recentP_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(20), content VARCHAR(100), media VARCHAR(100), link VARCHAR(100));
INSERT INTO recentPosts(recentP_id, title, content, media, link) VALUES (1, 'RecentPost1', 'First recent post trial', 'http://localhost:8080/images/recentPost1.jpg', '');
INSERT INTO recentPosts(recentP_id, title, content, media, link) VALUES (2, 'RecentPost2', 'Second recent post trial', 'http://localhost:8080/images/recentPost2.jpg', '');

DROP TABLE IF EXISTS personalPosts;
CREATE TABLE personalPosts(personalP_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(20), content VARCHAR(100), media VARCHAR(100), link VARCHAR(100));
INSERT INTO personalPosts(personalP_id, title, content, media, link) VALUES (1, 'PersonalPost1', 'First personal post trial', '', '');
INSERT INTO personalPosts(personalP_id, title, content, media, link) VALUES (2, 'PersonalPost2', 'Second personal post trial', '', '');

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(generalP_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL , recommendP_id INT DEFAULT 0, recentP_id INT DEFAULT 0, personalP_id INT DEFAULT 0);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (1, 1, DEFAULT, DEFAULT);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (2, 2, DEFAULT, DEFAULT);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (3, DEFAULT, 1, DEFAULT);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (4, DEFAULT, 2, DEFAULT);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (5, DEFAULT, DEFAULT, 1);
INSERT INTO posts(generalP_id, recommendP_id, recentP_id, personalP_id) VALUES (6, DEFAULT, DEFAULT, 2);

DROP TABLE IF EXISTS notifications;
CREATE TABLE notifications(notification_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(20), content VARCHAR(100), time VARCHAR(20), isDisplay boolean);
INSERT INTO notifications(notification_id, title, content, time, isDisplay) VALUES (1, 'orangeCounty', 'Missing!', '1h', true);
INSERT INTO notifications(notification_id, title, content, time, isDisplay) VALUES (2, 'PeopleTwitter', 'Right wing boomer stopped kids sporting event' , '3d', true);

# SELECT * FROM users;
# SELECT * FROM recommendPosts;
# SELECT * FROM recentPosts;
# SELECT * FROM personalPosts;
# SELECT * FROM posts;
# SELECT * FROM notifications;