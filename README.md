# Student Management Database System

## Overview
This project is a simple Student Management Database built using MySQL.  
It is designed to store and manage information about students, departments, courses, and student enrollments in a structured and organized way.

The main goal of this project is to demonstrate how relational databases work in real-life scenarios using proper design, relationships, and SQL queries.

---

## What does this project do?
The database allows you to:
- Store student details
- Store department information
- Store course details
- Track which students are enrolled in which courses
- Maintain data consistency using keys and constraints

---

## Database Structure
The project consists of the following tables:

### 1. Department
Stores information about different departments.
- Each department has a unique ID
- Department names are unique

### 2. Student
Stores student details.
- Each student belongs to one department
- Students are linked to departments using a foreign key

### 3. Course
Stores course details.
- Each course belongs to one department
- Courses are linked to departments using a foreign key

### 4. Enrollment
Handles the relationship between students and courses.
- A student can enroll in multiple courses
- A course can have multiple students
- This many-to-many relationship is handled using a junction table

---

## Key Concepts Used
- Relational database design
- Primary keys and foreign keys
- Composite primary keys
- Normalization (up to 3NF)
- One-to-many and many-to-many relationships
- SQL joins (INNER JOIN, LEFT JOIN)
- Group By and Having clauses
- Transactions and ACID properties

---

## Files in this Repository
- `schema.sql` – Contains SQL commands to create all database tables
- `data.sql` – Contains sample data inserted into the tables
- `queries.sql` – Contains SQL queries to fetch meaningful information
- `README.md` – Project documentation

---

## How to Run the Project
1. Create a new database in MySQL
2. Run `schema.sql` to create the tables
3. Run `data.sql` to insert sample data
4. Execute queries from `queries.sql` to view results

---

## Example Queries Included
- List of students with their departments
- Students along with courses they are enrolled in
- Department-wise student count
- Students enrolled in more than one course
- Number of students enrolled in each course

---

## Tools and Technologies
- MySQL
- SQL
- MySQL Workbench

---

## Purpose of This Project
This project was created to strengthen understanding of SQL, database design, and relational concepts.  
It is suitable as a beginner-to-intermediate level database project and can be extended further into a backend or web application.

