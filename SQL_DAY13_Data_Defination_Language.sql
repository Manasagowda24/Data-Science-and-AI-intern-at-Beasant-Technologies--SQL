-- QUERIES ON DDL(Data Defination Language)

CREATE DataBase DDL;

use DDL;

--  CREATE   --

-- 1.Create Department table

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

SELECT *
FROM department ;


-- 2.Create Employeee table 

CREATE TABLE Employeee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
SELECT * 
From employeee ;

-- 3.Creates Project table to store project details

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2)
);
SELECT * 
FROM project ;

-- 4.Creates Attendance table to store employee attendance records

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    attendance_date DATE,
    status CHAR(1),
    FOREIGN KEY (emp_id) REFERENCES Employeee(emp_id)
);
SELECT * 
FROM attendance ;
 
-- 5.Creates Salary table to store employee salary details

CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonus FLOAT,
    payment_date DATETIME,
    FOREIGN KEY (emp_id) REFERENCES Employeee(emp_id)
);
SELECT *
FROM salary ;

-- 6.Creates Manager table to store manager information

CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);
SELECT * 
FROM manager ;

-- RENAME --

-- 1.Rename Employeee table to Employeees
ALTER TABLE Employeee RENAME TO Employeees;

-- 2.Rename Department table to Departments
ALTER TABLE Department RENAME TO Departments;

-- 3.Rename Employees table back to Employee
ALTER TABLE Employeees RENAME TO Employeee;

-- 4.Rename Project table to Company_Project
ALTER TABLE Project RENAME TO Company_Project;

-- 5.Rename Attendance table to Employee_Attendance
ALTER TABLE Attendance RENAME TO Employee_Attendance;

-- 6.Rename Salary table to Staff_Salary
ALTER TABLE Salary RENAME TO Staff_Salary;

-- 7.Rename Manager table to Team_Manager
ALTER TABLE Manager RENAME TO Team_Manager;



-- ALTER --

-- 1.Add a new column phone to Employee table
ALTER TABLE Employeee ADD phone VARCHAR(15);

-- 2.Modify salary datatype in Employee table
ALTER TABLE Employeee MODIFY salary DECIMAL(12,2);

-- 3.Drop phone column from Employee table
ALTER TABLE Employeee DROP COLUMN phone;

-- 4. Add project_status column to Project table
ALTER TABLE company_project ADD project_status VARCHAR(20);

-- 5. Add check_in_time column to Attendance table
ALTER TABLE employee_attendance ADD check_in_time TIME;

-- 6. Add allowance column to Salary table
ALTER TABLE staff_salary ADD allowance DECIMAL(8,2);

-- 7. Add address column to Manager table
ALTER TABLE team_manager ADD address VARCHAR(150);

-- 8.Add a new column assigned_date to Company project
ALTER TABLE company_project ADD assigned_date VARCHAR(15);

-- 9.Drop assigned_date column from Employee_Project table
ALTER TABLE company_project DROP COLUMN assigned_date;



-- TRUNCATE --


-- 1. Remove all records from Employees but keep table structure
TRUNCATE TABLE Employees;


-- 2. Remove all records from Departments but keep table structure
TRUNCATE TABLE Departments;


-- 3.Remove all records from Employee (if renamed as Employees)
TRUNCATE TABLE Employees;

-- 4.Remove all records from Project but keeps table structure
TRUNCATE TABLE company_project;

-- 5.Remove all records from Attendance but keeps table structure
TRUNCATE TABLE employee_attendance;

-- 6.Remove all records from Salary but keeps table structure
TRUNCATE TABLE staff_salary;

-- 7.Remove all records from Manager but keeps table structure
TRUNCATE TABLE team_manager;

-- 8.Remove all records from company_project but keeps table structure
TRUNCATE TABLE company_project;



-- DROP --

-- 1.Delete Employee table permanently from database
DROP TABLE Employeees;

-- 2.Delete Department table permanently from database
DROP TABLE departments;

-- 3.Delete Employeees table permanently from database
DROP TABLE Employeees;

-- 4.Delete Project table permanently from database
DROP TABLE company_project;

-- 5.Delete Attendance table permanently from database
DROP TABLE employee_attendance;

-- 6.Delete Salary table permanently from database
DROP TABLE staff_salary;

-- 7.Delete Manager table permanently from database
DROP TABLE team_manager;

-- 8.Delete company_project table permanently from database
DROP TABLE company_project;



-- USING DATA TYPES

-- ALTER --

-- 1.Add DATE data type column to Employee table
ALTER TABLE Employeees ADD hire_date DATE;

-- 2.Add FLOAT data type column for bonus
ALTER TABLE Employeees ADD bonus FLOAT;

-- 3.Add BOOLEAN data type column for employee status
ALTER TABLE Employeees ADD is_active BOOLEAN;

-- 4.Add start_time column of type TIME to Project table
ALTER TABLE company_project ADD start_time TIME;

-- 5. Add overtime_hours column of type FLOAT to Attendance table
ALTER TABLE company_project ADD overtime_hours FLOAT;

-- 6.Add tax column of type DECIMAL(8,2) to Salary table
ALTER TABLE staff_salary ADD tax DECIMAL(8,2);

--  7.Add experience column of type INT to Manager table
ALTER TABLE team_manager ADD experience INT;


-- MODIFY Data Types

-- 1.Change emp_name datatype to VARCHAR(100)
ALTER TABLE Employeees MODIFY emp_name VARCHAR(100);

-- 2.Change salary datatype to DECIMAL(12,2)
ALTER TABLE Employeees MODIFY salary DECIMAL(12,2);

-- 3.Change hire_date datatype to DATETIME
ALTER TABLE Employeees MODIFY hire_date DATETIME;

-- 4.Change budget datatype to DECIMAL(15,2) in Project table
ALTER TABLE company_project MODIFY budget DECIMAL(15,2);

-- 5.Change attendance_date datatype to DATETIME in Attendance table
ALTER TABLE employee_attendance MODIFY attendance_date DATETIME;

-- 6.Change bonus datatype to FLOAT in Salary table
ALTER TABLE staff_salary MODIFY bonus FLOAT;

-- 7.Change manager_name datatype to VARCHAR(100) in Manager table
ALTER TABLE team_manager MODIFY manager_name VARCHAR(100);




