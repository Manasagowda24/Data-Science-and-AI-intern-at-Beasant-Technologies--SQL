

-- QUERIES ON SPECIAL OPERATOR
use employee;

-- 1) LIST ALL THE EMPLOYEES WHOSE COMMISSION IS  NULL.
Select * 
From emp 
Where comm IS Null;

-- 2) LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER.
Select * 
From emp 
Where mgr is null;

-- 3) LIST ALL THE SALESMEN IN DEPT 30
Select * 
From emp 
Where deptno in (30) AND Job in ('Salesman');

-- 4) LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND HAVING SALARY GREATER THAN 1500
Select * 
From emp 
Where job in ('SALESMAN') and deptno in (30) and sal > 1500; 

-- 5) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A'
Select * 
From emp 
Where Ename like 'S%' or Ename like 'A%';

-- 6) LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20.
Select * 
From emp 
Where deptno in (10, 20);

-- 7) LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'
Select * 
From emp 
Where ename not like 'S%';

-- 8) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10
Select * 
From emp 
Where mgr is not null and deptno in (10);

-- 9) LIST ALL THE EMPLOYEES WHOSE COMMISSION LIS NULL AND WORKING AS CLERK
Select * 
From emp 
Where comm is null And job in ('clerk');

-- 10) LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30.
Select * 
From emp 
Where mgr is null And Deptno IN (10, 30);

-- 11) LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450
Select * 
From emp 
Where job in ('Salesman') ANd Deptno In (30) And Sal > 2450;

-- 12) LIST ALL THE ANALYST IN DEPT NUMBER 20 AND HAVING SALARY GREATER THAN 2500
Select * 
From emp 
Where job in ('Analyst') AND deptno in (20) And Sal > 2500;

-- 13) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR <J'
Select * 
From emp 
Where Ename like 'M%' OR Ename like 'J%';

-- 14) LIST ALL THE EMPLOYEES WITH ANNUAL SALARYEXCEPT THOSE WHO ARE WORKING IN DEPT 30
Select *, Sal * 12 "Annual Salary"
From emp 
Where Deptno Not in (30);

-- 15) LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R'
Select * 
From emp 
Where Ename Not Like '%ES' AND Ename Not like '%R';

-- 16) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH 10% HIKE IN SALARY
Select *
From emp 
Where mgr is not null and deptno in (10) ANd Sal=sal+sal/100*10;

-- 17) DISPLAY ALL THE EMPLOYEE WHO. ARE SALESMAN'S HAVING 'E' AS THE LAST BUT ONE CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER
Select * 
From emp 
Where job in ('SalesMan') AND Ename like '%E_' ANd Sal like'____';

-- 18) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED AFTER YEAR 81
Select * 
From emp 
Where job in ('SalesMan') AND Ename like '%E_' ANd Sal like'____';

-- 19) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB
Select * 
From emp 
Where hiredate like '____-02-__';

-- 20) LIST THE EMPLOYEES WHO ARE NOT WORKING AS MANAGERS AND CLERKS IN DEPT 10 AND 20 WITH A  SALARY IN THE RANGE OF 1000 TO 3000.
Select * 
From emp 
Where job not in ('manager','clerk') And deptno in (10,20) 
		  And Sal between 1000 And 3000;


