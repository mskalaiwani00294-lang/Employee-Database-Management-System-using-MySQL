
-- Create Database
Create Database Employee;
Use Employee;

-- Create Departments Table
Create Table Departments(
    Department_Id Int Primary Key,
    Department_Name Varchar(100)
);

-- Create Location Table
Create Table Location(
    Location_Id Int Primary Key,
    Location_Name Varchar(100)
);

-- Create Employees Table
Create Table Employees(
    Employee_Id Int Primary Key,
    Employee_Name Varchar(100),
    Gender Char(1),
    Age Int,
    Hire_Date Date,
    Designation Varchar(50),
    Salary Decimal(10,2),
    Department_Id Int,
    Location_Id Int,

    Foreign Key (Department_Id)
    References Departments(Department_Id),

    Foreign Key (Location_Id)
    References Location(Location_Id)
);


-- Alter Commands



Alter Table Employees
Add Email Varchar(100);


Alter Table Employees
Modify Designation Varchar(150);

-- Drop Age Column
Alter Table Employees
Drop Column Age;


Alter Table Employees
Rename Column Hire_Date To Date_Of_Joining;



Rename Table Departments To Departments_Info;

Rename Table Location To Locations;



Truncate Table Employees;



Drop Table Employees;

Drop Database Employee;

-- Constraints Assignment
 

-- Drop Database If Exists
Drop Database If Exists Employee;

-- Create Database Again
Create Database Employee;

Use Employee;

-- Departments Table
Create Table Departments(
    Department_Id Int Primary Key,
    Department_Name Varchar(100) Not Null Unique
);

-- Locations Table
Create Table Location(
    Location_Id Int Auto_Increment Primary Key,
    Location_Name Varchar(100) Not Null Unique
);

-- Employees Table
Create Table Employees(
Employee_Id Int Primary Key,
Employee_Name Varchar(100) Not Null,
Gender Char(1)Check (Gender In ('M','F')),
Age Int Check (Age >= 18),
Hire_Date Date Default (Current_Date),
Designation Varchar(150),
Salary Decimal(10,2),
Department_Id Int,
Location_Id Int,
Constraint Fk_Department
Foreign Key (Department_Id)
References Departments(Department_Id),

Constraint Fk_Location
Foreign Key (Location_Id)
References Location(Location_Id)
);

    