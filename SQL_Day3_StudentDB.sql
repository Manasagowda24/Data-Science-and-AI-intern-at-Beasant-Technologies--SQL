CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE student (
  SID INT(4) PRIMARY KEY,
  SNAME VARCHAR(20),
  COURSE VARCHAR(15),
  DEPTNO INT(2),
  YEAR INT(1),
  DOB DATE,
  MARKS INT(3)
);

INSERT INTO student (SID, SNAME, COURSE, DEPTNO, YEAR, DOB, MARKS) VALUES
(101, 'ANITA', 'CSE', 10, 3, '2003-05-12', 85),
(102, 'RAHUL', 'ECE', 20, 2, '2004-08-20', 78),
(103, 'SNEHA', 'ISE', 10, 4, '2002-11-05', 90),
(104, 'ARJUN', 'MECH', 30, 3, '2003-03-18', 72),
(105, 'POOJA', 'CSE', 10, 1, '2005-01-25', 88),
(106, 'KIRAN', 'EEE', 40, 4, '2002-09-10', 81),
(107, 'NEHA', 'ECE', 20, 2, '2004-06-14', 75),
(108, 'ROHAN', 'ISE', 10, 3, '2003-12-30', 84);


Select * from student;

-- Write a query to dispaly students name from student table.
Select SName 
From Student;

-- Write a query to dispaly students name along with dept number from student table.
Select SName, DeptNo
From Student;

-- Write a query to dispaly student id, students name, Course from student table.
Select SID, SName, Course
From Student;