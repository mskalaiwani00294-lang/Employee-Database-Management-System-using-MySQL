# Employee Database Management System using MySQL

## 📖 Project Overview

This project demonstrates the design and implementation of an Employee Database Management System using MySQL. It covers database creation, table relationships, constraints, SQL clauses, joins, window functions, and DDL operations. The project is designed to strengthen fundamental SQL and relational database concepts through practical implementation.

---

## 🎯 Objectives

- Design a relational employee database
- Create tables with appropriate constraints
- Implement Primary Keys and Foreign Keys
- Maintain data integrity using SQL constraints
- Perform DDL operations
- Practice SQL clauses, joins, aggregate functions, and window functions

---

## 🛠 Technologies Used

- MySQL 8.x
- MySQL Workbench
- SQL (DDL & DML)
- Git & GitHub

---

## 📂 Database Structure

### Departments

| Column | Description |
|---------|-------------|
| department_id | Primary Key |
| department_name | NOT NULL, UNIQUE |

### Locations

| Column | Description |
|---------|-------------|
| location_id | Primary Key, AUTO_INCREMENT |
| location_name | NOT NULL, UNIQUE |

### Employees

| Column | Description |
|---------|-------------|
| employee_id | Primary Key |
| employee_name | NOT NULL |
| gender | CHECK ('M','F') |
| age | CHECK(age >=18) |
| hire_date | DEFAULT CURRENT_DATE |
| designation | Employee Designation |
| salary | Employee Salary |
| department_id | Foreign Key |
| location_id | Foreign Key |

---

## 🔗 Entity Relationship

- One Department → Many Employees
- One Location → Many Employees

---

## ✅ Constraints Used

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT
- AUTO_INCREMENT

---

## 📌 SQL Concepts Covered

### DDL Commands

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- RENAME TABLE
- TRUNCATE TABLE
- DROP TABLE
- DROP DATABASE

### SQL Clauses & Operators

- DISTINCT
- ALIAS (AS)
- WHERE
- ORDER BY
- LIMIT

### Aggregate Functions

- SUM()
- AVG()
- MIN()
- MAX()
- COUNT()

### GROUP BY & HAVING

- GROUP BY
- HAVING

### SQL Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- CROSS JOIN
- SELF JOIN

### Window Functions

- RANK()
- DENSE_RANK()
- Running Total using SUM() OVER()

---

## 📁 Project Files

```
Employee-Database-Management-System/
│
├── README.md
├── Employee_Database.sql
├── Documentation SQL EmployeeDB.pdf
├── Doc2 Clause & Operators.pdf
└── Screenshots/
    ├── Database Creation.png
    ├── Departments Table.png
    ├── Locations Table.png
    ├── Employees Table.png
    ├── ALTER Commands.png
    ├── JOIN Queries.png
    ├── Window Functions.png
```

---

## 🚀 How to Run

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench.
3. Open the `Employee_Database.sql` file.
4. Execute the script.
5. Verify the created database and tables.
6. Run the SQL queries provided in the documentation.

---

## 📸 Screenshots

Include screenshots of:

- Database Creation
- Departments Table
- Locations Table
- Employees Table
- ALTER TABLE Commands
- JOIN Queries
- Window Function Queries
- Query Results

---

## 📚 Documentation

This repository contains:

- **Documentation SQL EmployeeDB.pdf** – Complete Employee Database documentation.
- **Doc2 Clause & Operators.pdf** – SQL practice questions covering:
  - DISTINCT
  - ALIAS
  - WHERE
  - ORDER BY
  - LIMIT
  - Aggregate Functions
  - GROUP BY
  - HAVING
  - INNER JOIN
  - LEFT JOIN
  - RIGHT JOIN
  - CROSS JOIN
  - SELF JOIN
  - Window Functions

---

## 🎓 Learning Outcomes

After completing this project, you will understand:

- Database Design
- Relational Database Concepts
- SQL DDL Commands
- SQL Clauses
- Aggregate Functions
- SQL Joins
- Window Functions
- Data Integrity
- Schema Management

---

## 👩‍💻 Author

**Kalaivani M**

Aspiring Data Analyst

### Skills


- MySQL
  

---

## ⭐ Support

If you found this project useful, please consider giving it a ⭐ on GitHub.

---

## 📜 License

This project is created for educational and learning purposes.
