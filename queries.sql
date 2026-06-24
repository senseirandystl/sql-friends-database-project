-- queries.sql
-- Analytical queries demonstrating SQL skills

-- 1. View all friends
SELECT * FROM friends;

-- 2. Find all hobbies for each friend (using JOIN)
SELECT 
    f.name,
    h.hobby
FROM friends f
LEFT JOIN hobbies h ON f.id = h.friend_id
ORDER BY f.name;

-- 3. Count how many hobbies each friend has
SELECT 
    f.name,
    COUNT(h.id) AS number_of_hobbies
FROM friends f
LEFT JOIN hobbies h ON f.id = h.friend_id
GROUP BY f.id, f.name
ORDER BY number_of_hobbies DESC;

-- 4. Find friends who share hobbies (self-join on hobbies table)
SELECT 
    f1.name AS friend1,
    f2.name AS friend2,
    h.hobby
FROM hobbies h
JOIN friends f1 ON h.friend_id = f1.id
JOIN hobbies h2 ON h.hobby = h2.hobby AND h.friend_id < h2.friend_id
JOIN friends f2 ON h2.friend_id = f2.id;

-- 5. Show all friendships with names
SELECT 
    f1.name AS friend1,
    f2.name AS friend2,
    fs.friendship_start
FROM friendships fs
JOIN friends f1 ON fs.friend1_id = f1.id
JOIN friends f2 ON fs.friend2_id = f2.id;

-- 6. Find the friend with the most hobbies
SELECT 
    f.name,
    COUNT(h.id) AS hobby_count
FROM friends f
JOIN hobbies h ON f.id = h.friend_id
GROUP BY f.id
ORDER BY hobby_count DESC
LIMIT 1;

-- 7. List friends born in the 1990s
SELECT name, birthday 
FROM friends 
WHERE birthday BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birthday;
