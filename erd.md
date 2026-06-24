# Entity Relationship Diagram

## friends
- id (PK)
- name
- birthday
- email

## hobbies
- id (PK)
- friend_id (FK → friends.id)
- hobby

## friendships
- id (PK)
- friend1_id (FK → friends.id)
- friend2_id (FK → friends.id)
- friendship_start
