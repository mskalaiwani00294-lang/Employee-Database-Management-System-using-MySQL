# Employee Database Management System using MySQL

## 📖 Project Overview

This project demonstrates the design and implementation of an Employee Database using MySQL Data Definition Language (DDL). It focuses on creating relational tables, applying constraints, and managing data with database operations.

---

## 🎯 Objective

- Design an Employee Database.
- Create relational tables.
- Implement database constraints.
- Establish relationships using Foreign Keys.
- Maintain data integrity and consistency.
- Perform DDL operations.

---

## 🛠 Technologies Used

- MySQL 8.x
- MySQL Workbench
- SQL (DDL)
- GitHub

---

## 📂 Database Structure

### Departments

- `department_id` – Primary Key
- `department_name` – NOT NULL, UNIQUE

### Locations

- `location_id` – Primary Key, AUTO_INCREMENT
- `location_name` – NOT NULL, UNIQUE

### Employees

- `employee_id` – Primary Key
- `employee_name` – NOT NULL
- `gender` – CHECK ('M', 'F')
- `age` – CHECK (age >= 18)
- `hire_date` – DEFAULT CURRENT_DATE
- `designation`
- `salary`
- `department_id` – Foreign Key
- `location_id` – Foreign Key

---

## 🔗 Relationships

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

## 📌 DDL Commands

### CREATE

- Create Database
- Create Tables
- Define Relationships

### ALTER

- Add Column
- Modify Column
- Drop Column
- Rename Column

### RENAME

- Rename Tables

### TRUNCATE

- Remove All Records

### DROP

- Drop Tables
- Drop Database

---

## 📁 Project Files

- README.md
- Employee_Database.sql
- Documentation SQL EmployeeDB.pdf
- Screenshots Folder

---

## 🚀 How to Run

1. Open MySQL Workbench.
2. Open `Employee_Database.sql`.
3. Execute the SQL script.
4. Verify the database and tables.

---

## 📸 Screenshots

- Database Creation
- Departments Table
- Locations Table
- Employees Table
- ALTER Command
- RENAME Command
- TRUNCATE Command
- DROP Command

---

## 📚 Documentation

- Documentation SQL EmployeeDB.pdf

---

## 🎓 Learning Outcomes

- Database Design
- SQL DDL Commands
- Table Creation
- Constraints
- Foreign Keys
- Relational Database Concepts
- Data Integrity
- Schema Management

---

## 👩‍💻 Author

**Kalaivani M**

Aspiring Data Analyst

### Skills

- SQL
- MySQL
- Excel
- Power BI
- Python (Learning)

---

## ⭐ Support

If you found this project useful, please give it a ⭐ on GitHub.

---

## 📜 License

This project is for educational and learning purposes.
