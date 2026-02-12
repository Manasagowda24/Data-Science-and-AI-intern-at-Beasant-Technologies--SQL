use employee;


-- Group By Clause Practice

-- 1.WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPARTEMENT EXCEPT PRESIDENT.

select count(*), deptno
from emp
where job not in ("president")
group by deptno ;


-- 2.WAQTD TOTAL SALARY NEEDED TO PAY ALL THE EMPLOYEES IN EACH JOB.

select sum(sal), job
from emp 
group by job;


-- 3.WAQTD NUMBER OF EMPLOYEEES WORKING AS MANAGER IN EACH DEPARTMENT.

select count(*), deptno
from emp
where job in("manager")
group by deptno;



-- 4. WAQTD AVG SALARY NEEDED TO PAY ALL THE EMPLOYEES IN EACH DEPARTMENT EXCLUDING THE EMPLOYEES OF DEPTNO 20.

select avg(sal), deptno
from emp
where  deptno not in(20)
group by deptno;



-- 5.WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER'A' IN THEIR NAMES IN EACH JOB.

select count(*),job
from emp
where ename like '%a%'
group by job;


-- 6.WAQTD NUMBER OF EMPLOYEES AND AVG SALARY NEEDED TO PAY THE EMPLOYEES WHO SALARY IN GREATER THAN 2000 IN EACH DEPT.

select count(*), avg(sal),deptno
from emp
where sal > 2000
group by deptno;



-- 7.WAQDTD TOTAL SALARY NEEDED TO PAY AND NUMBER OF SALESMANS IN EACH DEPT.

select sum(sal),count(job),deptno
from emp
where job in ('salesman')
group by deptno;


-- 8. WAQTD NUMBER OF EMPLOYEES WITH THEIR MAXIMUM SALARIES IN EACH JOB.

select count(*),max(sal),job
from emp 
group by job;



-- 9.WAQTD MAXIMUM SALARIES GIVEN TO AN EMPLOYEE WORKING IN EACH DEPT. 
select max(sal),deptno
from emp
group by deptno;



-- 10.WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN EMPLOYEE TABLE.
select count(sal)
from emp;








-- Having Clause Practice
-- 1. WAQTD DNO AND NUMBER OF EMP WORKING IN EACH DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT

select deptno, count(*)
from emp
where job ="clerk"
group by deptno
having count(*) <=2 ;

-- 2. WAQTD DNO AND TOTAL SAALARY NEEDED TO PAY ALL EMP IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH DEPT

select deptno , sum(sal)
from emp
group by deptno
having count(*)<=4 ;

-- 3.WAQTD NUMBER OF EMP EARNING SAL MORE THAN 1200 IN EACH JOB AND THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB MUST EXCEES 3800

select  count(*), sum(sal),job
from emp
where sal > 1200
group by job
having sum(sal)> 3800;

-- 4.WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY IF THERE ARE 2 EMP WORKING IN EACH DEPT AS MANAGER

select deptno , count(*),deptno
from emp
where job = 'manager'
group by deptno
having count(empno) = 2;


-- 5.WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE MAX SAL EXCEEDS 2600

select job, max(sal),job
from emp
group by job
having max(sal) > 2600;


-- 6. WAQTD THE SALARIES WHICH ARE REPEATED IN EMP TABLE

select count(*), sal
from emp
group by sal
having count(sal) >1;

select * from emp;

-- 7.WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP TABLE
select count(*),hiredate
from emp
group by hiredate
having count(hiredate) >1;





-- 8.WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS THAN 3000

select avg(sal) ,deptno
from emp
group by deptno
having avg(sal)<3000;


-- 9.WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH DEPT WHOS NAME HAS CHAR 'A' OR 'S'

select deptno ,count(*)
from emp
where ename like '%A%' and ename like '%s'
group by deptno
having count(ename) <= 3;





-- 10.WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000.

select min(sal), max(sal),job
from emp 
group by job
having min(sal)>1000 and max(sal) < 5000;
