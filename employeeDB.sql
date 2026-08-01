
-- Create Database
Create Database if not exists Employee;
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
Create table employees (
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

USE employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_Name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

-- DISTINCT VALUES
select distinct salary from Employees;

-- ALIAS AS
select Age as Employee_Age , salary as employee_Salary from Employees;

-- WHERE CLAUSE 
select *from Employees 
where Salary>50000 and 
hire_date <'2016-01-01';

-- Find the employee whose designation is missing and fill it with DataScientist
SELECT Employee_Id, Employee_Name, Designation
FROM Employees
WHERE Designation IS NULL;

UPDATE Employees
SET Designation = 'Data Scientist'
WHERE Designation IS NULL;

select employee_Id,Employee_Name,
designation
from Employees
where Employee_Id=5004;

-- Find employees sorted by department ID in ascending order and salary indescending order

select* from Employees
order by Department_Id ASC,Salary DESC;

-- Display the first 5 employees hired in the year 2018

select * from Employees
where Year(Hire_Date)=2018
order by Hire_date ASC limit 5;

-- Calculate the sum of all salaries in the Finance department

Select Sum(E.Salary) As Total_Finance_Salary
From Employees e
Join Departments d
On e.Department_Id = d.Department_Id
Where d.Department_Name ='Finance';


-- Find the minimum age among all employees
 
 Select Employee_Id,Employee_Name,Age
 from Employees
 Where Age=(Select MIN(Age) from
 Employees);
 
-- List the maximum salary for each location

Select l.location_Name,
max(e.salary)as Maximum_Salary
from Employees e
join Location l
on e. location_Id = l.Location_Id
Group by l.Location_Name;

-- Calculate the average salary for each designation containing the word Analyst
Select Designation,
Avg(salary) As Average_Salary
from Employees
where Designation like '%analyst%'
Group by Designation;

-- Find departments with less than 3 employees

Select department_Id,
Count(Employee_Id) As Total_Employees
From Employees
Group by Department_Id
having Count(Employee_Id)<3;

-- Find locations with female employees whose average age is below 

Select Location_Id,
Avg(Age)as Average_Age
From Employees
Where Gender = 'F'
Group by Location_Id
Having AVG(age)<30;

-- List employee names, their designations, and department names where employees are assigned to a department

Select e.Employee_Name,
e.Designation,
d.department_Name
from Employees e
inner join  Departments d
on e.department_Id=d.Department_Id;


-- List all departments along with the total number of employees in each department, including departments with no employees
select d.department_Name,
count(e.Employee_Id) as Total_Employees
from Departments d
left join Employees e
 on d.department_Id= e.department_Id
group by d.department_Name;

-- Display all locations along with the names of employees assigned to each location.If no employees are assigned to a location, display NULL for employee name

Select 
l.Location_Name,
e.Employee_Name
From Employees e
Right join Location l
on e.location_Id=l.location_Id;
use employee;
-- Show all possible combinations of departments and locations
select
d.Department_Name,
l.location_Name
from departments d
cross join location l;

-- Show pairs of employees working in the same department, excluding self-pairs
select
e1.Employee_name as Employee1,
e2.Employee_Name as Employee2,
e1.Department_Id
from Employees e1
join Employees e2
on e1.Department_Id=e2.Department_Id
and e1.Employee_Id<e2.Employee_Id;

-- Write a window function query to rank employees by salary using rank()
select
Employee_Id,
Employee_Name,
Salary,
Rank() over (order by Salary desc) 
as Salary_Rank
from Employees;

--  Write a window function query to rank employees by salary within each department using DENSE_RANK
Select
Employee_Id,
Employee_Name,
Department_ID,
Salary,
dense_Rank() over(partition by department_ID order by Salary DESC)
As Salary_Rank
from Employees;

--  Write a window function query, Running total salary by department

select
Employee_Id,
Employee_Name,
Department_ID,
Salary,
sum(salary) over(partition by Department_ID order by Salary)
As Running_Total_Salary
From Employees;






    