-- data.sql
-- Sample data for the friends database

INSERT INTO friends (id, name, birthday, email) VALUES
(1, 'Storm', '1940-05-30', 'storm@codecademy.com'),
(2, 'Tyler Johnson', '1995-04-28', 'tyler.johnson@email.com'),
(3, 'David Blake', '1997-07-14', 'david.blake@email.com'),
(4, 'Maya Patel', '1998-11-03', 'maya.patel@email.com'),
(5, 'Liam Chen', '1994-02-19', 'liam.chen@email.com');

INSERT INTO hobbies (friend_id, hobby) VALUES
(1, 'Weather Control'),
(1, 'Flying'),
(2, 'Gaming'),
(2, 'Hiking'),
(3, 'Reading'),
(3, 'Cooking'),
(4, 'Photography'),
(4, 'Traveling'),
(5, 'Music'),
(5, 'Coding');

INSERT INTO friendships (friend1_id, friend2_id, friendship_start) VALUES
(2, 3, '2018-06-15'),
(2, 4, '2019-03-22'),
(3, 5, '2020-01-10'),
(4, 5, '2021-09-05'),
(1, 2, '2015-07-30');
