# SQL Friends Database Project

A hands-on SQL project demonstrating database design, data manipulation, and analytical querying using a fictional "friends" database.

## Project Overview

This project expands on a basic SQL exercise by building a more realistic relational database. It includes:

- Proper table design with constraints
- Multiple related tables (friends, hobbies, friendships)
- Data insertion, updates, and deletion
- Complex queries using JOINs, aggregation, and filtering
- Clear documentation of the schema and queries

## Skills Demonstrated

- Database schema design and normalization
- Creating tables with constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `FOREIGN KEY`)
- CRUD operations (`INSERT`, `SELECT`, `UPDATE`, `DELETE`)
- Table alterations (`ALTER TABLE`)
- Multi-table queries using `JOIN`
- Aggregate functions and `GROUP BY`
- Subqueries and filtering logic
- Data modeling and relationships (one-to-many, many-to-many)

## Database Schema

The database contains three main tables:

- `friends` — Core table storing personal information
- `hobbies` — Stores hobbies linked to friends (one-to-many)
- `friendships` — Junction table modeling many-to-many relationships between friends

## How to Run

This project uses **SQLite** syntax (compatible with most SQL environments).

1. Clone the repository
2. Open your preferred SQL environment (DB Browser for SQLite, VS Code + SQLite extension, etc.)
3. Run the scripts in this order:
   - `schema.sql`
   - `data.sql`
   - `queries.sql`

## Files

- `schema.sql` — Creates all tables and constraints
- `data.sql` — Inserts sample data
- `queries.sql` — Contains all analytical queries with explanations
- `erd.md` — Simple text-based Entity Relationship Diagram
