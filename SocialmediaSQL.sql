CREATE TABLE Social_Media_details2(
user_id SERIAL PRIMARY KEY,
username VARCHAR(255),
full_name VARCHAR(255),
gender VARCHAR(255),
date_of_birth DATE,
email VARCHAR(255),
phone VARCHAR(255),
password VARCHAR(255),
profile_photo VARCHAR(255),
bio VARCHAR(255),
website VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
province VARCHAR(255),
country VARCHAR(255),
followers INT,
following INT,
total_posts INT,
total_likes INT,
total_comments INT,
total_shares INT,
account_type VARCHAR(255),
account_status VARCHAR(255),
last_login TIMESTAMP,
registration_date DATE DEFAULT CURRENT_DATE,
transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_verified BOOLEAN DEFAULT FALSE,
is_active BOOLEAN DEFAULT TRUE
);
SELECT * FROM Social_Media_details2;
INSERT INTO Social_Media_details2
(username, full_name, gender, date_of_birth, email, phone, password, profile_photo, bio, website, address, city, province, country, followers, following, total_posts, total_likes, total_comments, total_shares, account_type, account_status, last_login, is_verified, is_active)
VALUES
('sita22', 'Sita bhandari', 'Female', '2061-09-15', 'sita45@gmail.com', '9860115550', 'Sita@78', 'sita.jpg', 'Traveller', 'www.sita.com', 'Pokhara', 'Pokhara', 'Gandaki', 'Nepal', 2500, 200, 150, 15000, 2500, 600, 'Creator', 'Active', '2026-07-20 22:00:00', TRUE, TRUE),
('dipak99', 'dipak oli', 'Male', '2060-12-20', 'hari34@gmail.com', '9803333333', 'Hari@12', 'hari.jpg', 'Photographer', 'www.hari.com', 'Biratnagar', 'Biratnagar', 'Koshi', 'Nepal', 1000, 450, 75, 6200, 860, 200, 'Business', 'Active', '2026-07-19 11:00:00', FALSE, TRUE),
('gita07', 'Gita oli', 'Female', '2063-03-08', 'gita50@gmail.com', '9844963171', 'Gita@23', 'gita.jpg', 'Food Blogger', 'www.gita.com', 'kathmandu', 'kathmandu', 'Bagmati', 'Nepal', 3400, 590, 340, 22000, 3400, 1200, 'Creator', 'Active', '2026-07-18 23:10:00', TRUE, FALSE);

SELECT MAX(followers)FROM Social_Media_details2;
SELECT MIN(followers)FROM Social_Media_details2;
SELECT SUM(followers)FROM Social_Media_details2;
SELECT AVG(followers)FROM Social_Media_details2;
SELECT COUNT(followers)FROM Social_Media_details2;
SELECT COUNT(*)FROM Social_Media_details2;

UPDATE Social_Media_details2
SET bio = 'sandhya vlogger'
WHERE user_id = 1;

SELECT * FROM Social_Media_details2 ORDER BY user_id ASC;
SELECT * FROM Social_Media_details2 ORDER BY user_id DESC;

ALTER TABLE Social_Media_details2
ALTER COLUMN username SET NOT NULL;

ALTER TABLE Social_Media_details2
ALTER COLUMN followers
TYPE SMALLINT
USING followers::SMALLINT;

ALTER TABLE Social_Media_details2
ALTER COLUMN followers
TYPE INT
USING followers::INT;

ALTER TABLE Social_Media_details2
ALTER COLUMN followers
TYPE BIGINT
USING followers::BIGINT;


