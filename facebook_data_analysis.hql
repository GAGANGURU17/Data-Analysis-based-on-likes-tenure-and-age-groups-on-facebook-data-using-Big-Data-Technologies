-- Facebook User Data Analysis with Hadoop and Hive

-- Hadoop Setup
-- Run these commands in Hadoop shell:
-- hadoop fs -mkdir /my_project/facebook/
-- hadoop fs -ls /my_project/facebook/

-- Hive Setup
CREATE TABLE facebook (
    userid INT,
    age INT,
    dob_day INT,
    dob_year INT,
    dob_month INT,
    gender STRING,
    tenure INT,
    friend_count INT,
    friendships_initiated INT,
    likes INT,
    likes_received INT,
    mobile_likes INT,
    mobile_likes_received INT,
    computer_likes INT,
    computer_likes_received INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/my_project/';

-- Verify data load
SELECT * FROM facebook LIMIT 10;

-- Data Analysis

-- 1. Total Number of Users
SELECT COUNT(*) AS total_users FROM facebook;

-- 2. Users Above Age 25
SELECT COUNT(*) AS users_above_25 FROM facebook WHERE age > 25;

-- 3. Average Friend Count by Gender
SELECT 
    gender,
    AVG(friend_count) AS avg_friend_count
FROM facebook
GROUP BY gender;

-- 4. Likes Received by Age Group
SELECT 
    CASE 
        WHEN age BETWEEN 13 AND 25 THEN 'Young'
        WHEN age BETWEEN 26 AND 35 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group,
    AVG(likes_received) AS avg_likes_received
FROM facebook
GROUP BY 
    CASE 
        WHEN age BETWEEN 13 AND 25 THEN 'Young'
        WHEN age BETWEEN 26 AND 35 THEN 'Adult'
        ELSE 'Senior'
    END;

-- 5. User Count by Birth Month
SELECT 
    dob_month, 
    COUNT(userid) AS user_count 
FROM facebook 
GROUP BY dob_month
ORDER BY dob_month;

-- 6. Mobile vs Computer Usage by Age Group
SELECT 
    CASE 
        WHEN age <= 25 THEN 'Young'
        ELSE 'Older'
    END AS age_group,
    AVG(mobile_likes_received) AS avg_mobile_likes,
    AVG(computer_likes_received) AS avg_computer_likes
FROM facebook
GROUP BY 
    CASE 
        WHEN age <= 25 THEN 'Young'
        ELSE 'Older'
    END;
