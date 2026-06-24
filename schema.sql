-- schema.sql
-- Creates the friends database with proper constraints and relationships

CREATE TABLE friends (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  birthday DATE,
  email TEXT UNIQUE
);

CREATE TABLE hobbies (
  id INTEGER PRIMARY KEY,
  friend_id INTEGER,
  hobby TEXT NOT NULL,
  FOREIGN KEY (friend_id) REFERENCES friends(id)
);

CREATE TABLE friendships (
  id INTEGER PRIMARY KEY,
  friend1_id INTEGER,
  friend2_id INTEGER,
  friendship_start DATE,
  FOREIGN KEY (friend1_id) REFERENCES friends(id),
  FOREIGN KEY (friend2_id) REFERENCES friends(id)
);
