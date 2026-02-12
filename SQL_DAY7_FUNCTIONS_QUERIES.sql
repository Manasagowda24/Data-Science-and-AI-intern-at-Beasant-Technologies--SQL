-- ASSIGNMENT ON FUNCTIONS

use employee;

-- 1.WAQTD NUMBER OF EMPLOYEES GETTING SALARY LESS THAN 2000 IN DEPTNO 10
SELECT Count(Ename) AS "Number Of Employees"
From emp
Where DeptNo IN (10) And Sal < 2000 ; 

-- 2.WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES WORKING AS CLERK
Select Sum(sal) AS "TOTAL SALARY"
From emp 
where job In ('Clerk');

-- 3.WAØTD AVERAGE SALARY NEEDED TO PAY ALL EMPLOYEES
select Avg(Sal) AS "Average Salary"
from emp;

-- 4.WAQTD NUMBER OF EMPLOYEES HAVING 'A' AS THEIR FIRST CHARACTER
select count(*) AS "Number Of Employees"
from emp 
where ename like 'A%' ;

-- 5.WAQTD NUMBER OF EMPLOYEES WORKING AS CLERK OR MANAGER
select count(*) AS "Number Of Employees"
from emp 
where job in ('clerk','manager');

-- 6.WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES HIRED IN FEB

select sum(sal) AS "TOTAL SALARY"
from emp 
where hiredate like ('____-02-__');

-- 7.WAQTD NUMBER OF EMPLOYEES REPORTING TO 7839 (MGR)
select count(*) AS "NUMBER OF EMPLOYEES"
from emp
where mgr IN (7839);

-- 8.WAQTD NUMBER OF EMPLOYEES GETTING COMISSION IN DEPTNO 30
select count(*) AS "NUMBER OF EMPLOYEES"
from emp 
where comm IS NOT NULL AND DeptNo in (30);

-- 9.WAQTD AVG SAL , TOTAL SAL , NUMBER OF EMPS AND MAXIMUM SALARY GIVEN TO EMPLOYEES WORKING AS PERSIDENT
select avg(Sal) AS "Average Salary", Sum(Sal) AS "Total Salary",
        Count(*) AS "NUMBER OF EMPLOYEES", Max(Sal) AS "MAXIMUM SALARY"
from emp 
where job in ('President');

-- 10.WAQTD NUMBER OF EMPLOYEES HAVING 'A' IN THEIR NAMES
select Count(*) AS "NUMBER OF EMPLOYEES"
from emp 
where ename like '%A%';

-- 11.WAQTD NUMBER OF EMPS AND TOTAL SALARY NEEDED TO PAY THE EMPLOYEES WHO HAVE 2 CONSICUTIVE L's IN THEIR NAMES
select count(*) AS "NUMBER OF EMPS", sum(sal) AS "TOTAL SALARY"
from emp 
where ename like '%ll%';

-- 12.WAQTD NUMBER OF DEPARTMENTS PRESENT IN EMPLOYEE TABLE
select count(deptNo) AS "NUMBER OF DEPARTMENTS"
from emp;

-- 13.WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER 'Z' IN THEIR NAMES
select count(*) AS "NUMBER OF EMPLOYEES"
from emp 
where ename like '%Z%';

-- 14.WAQTD NUMBER OF EMPLOYEES HAVING '$' IN THEIR NAMES .
select count(*) AS "NUMBER OF EMPLOYEES"
from emp 
where ename like '%$%'; 

-- 15.WAQTD TOTAL SALARY GIVEN TO EMPLOYEES WORKING AS CLERK IN DEPT 30
select sum(sal) AS "TOTAL SALARY"
from emp 
where job in ('clerk') And DeptNo in (30);

-- 16.WAQTD MAXIMUM SALARY GIVEN TO THE EMPLOYEES WORKING AS ANALYST
select max(sal) AS "MAXIMUM SALARY"
from emp 
where job in ('Analyst');

-- 17.WAQTD NUMBER OF DISTINCT SALARIES PRESENT IN EMPLOYEE TABLE
Select distinct count(Sal) AS "NUMBER OF DISTINCT SALARIES"
from emp ;
-- 18.WAQTD NUMBER OF JOBS PRESENT IN EMPLOYEE TABLE
Select distinct count(job) AS "NUMBER OF JOBS"
from emp;

-- 19.WATQD AVG SALARY GIVEN TO THE CLERK
select Avg(Sal) AS "Average Salary"
from emp 
where job in ('Clerk');

-- 20.WAQTD MINIMUM SALARY GIVEN TO THE EMPLOYEES WHO WORK IN DEPT 10 AS MANAGER OR A CLERK
select min(Sal) AS "MINIMUM SALARY"
from emp
where deptno in (30) And Job IN ('Manager','Clerk');










