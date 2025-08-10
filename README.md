# QuizQuest Database Schema & Management

## Overview  
**QuizQuest Database Schema & Management** is a relational database design and implementation project. It focuses on modeling, extending, and manipulating a database that stores all relevant information for a quiz-based application.  
The project demonstrates the ability to translate conceptual models into normalized relational structures and to perform data operations via SQL.

## Why this project exists  
This project was developed as part of a database systems course to:  
- Showcase **database modeling** and **normalization** skills.  
- Implement a relational schema for a quiz game platform ("QuizQuest").  
- Practice **DDL** (Data Definition Language) for table creation and **DML** (Data Manipulation Language) for CRUD operations.  

## Features & scope  
- **Database schema design** — Tables for users, games, questions, answers, and related entities.  
- **Relationships & constraints** — Primary keys, foreign keys, and referential integrity.  
- **Initial seed data** — SQL inserts to populate core tables.  
- **Schema extension** — Adding new attributes and tables to meet evolving requirements.  
- **Data manipulation** — Examples of `INSERT`, `UPDATE`, `DELETE`, and `SELECT` queries.  

> The provided `.sql` file contains the initial schema and sample data.

## Technologies used  
- **Database:** MySQL / MariaDB (compatible SQL dialect)  
- **Tools:** Any SQL client or database IDE (e.g., MySQL Workbench, DBeaver)  
- **Modeling:** Entity-Relationship diagrams for planning and normalization

## How to run the project  
```bash
# 1) Create a new database in your MySQL/MariaDB instance
CREATE DATABASE quizquest;

# 2) Import the schema and seed data
mysql -u <username> -p quizquest < schema.sql

# 3) Run queries against the database
mysql -u <username> -p quizquest
```

## Dependencies & requirements  
- MySQL 8+ or MariaDB 10.5+  
- SQL client software or command-line tools  
- Access credentials to a running database server

## How to contribute  
1. Fork the repository.  
2. Propose improvements to the schema or queries.  
3. Test all changes in a local database instance.  
4. Submit a pull request with details of changes and rationale.

## What powers the core functionality?  
- **Relational database theory** — Properly normalized schema design.  
- **SQL** — Core DDL/DML statements for schema creation and data handling.  
