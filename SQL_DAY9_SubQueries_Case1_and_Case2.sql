use employee;

-- ASSIGNMENT ON CASE 1:

-- 1. WAQTD NAME AND DEPTNO OF THE EMPLOYEES IF THEY ARE WORKING IN THE SAME DEPT AS JONES.

        select ename, deptno 
        from emp
        where deptno = (select deptno 
                        from  emp
                          where ename = "jones");



-- 2. WAQTD NAME AND JOB OF ALL THE EMPLOYEES WORKING IN THE SAME DESIGNATION AS JAMES.
    

select ename ,job 
from emp
where  job = (select job
                 from emp
                    where ename = "james");




-- 3. WAQTD EMPNO AND ENAME ALONG WITH ANNUAL SALARY OF ALL THEEMPLOYEES IF THEIR ANNUAL SALARY IS GREATER THAN WARDS ANNUAL SALARY.


select empno ,ename ,sal*12
from emp
where sal*12 > (select  sal*12
                from emp
                 where ename ="ward");
                 
                 
                 



-- 4. WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY ARE HIRED BEFORE SCOTT.

select ename , hiredate 
from emp
where hiredate < (select hiredate
                    from emp 
                      where ename ="scott");



-- 5. WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY ARE HIRED AFTER THE PRESIDENT.

 select ename ,hiredate 
from emp
where hiredate > (select hiredate
                    from emp 
                      where job ="PRESIDENT");





-- 6. WAQTD NAME AND SAL OF THE EMPLOYEE IF THEY ARE EARNING SAL LESS THAN THE EMPLOYEE WHOS EMPNO IS 7839.


select ename ,sal 
from emp
where  sal< (select sal 
               from emp
                  where empno = 7839);


-- 7. WAQTD ALL THE DETAILS OF THE EMPLOYEES IF THE EMPLOYEES ARE HIRED BEFORE MILLER.

select *
from emp
where hiredate < (select hiredate
                    from emp 
                      where ename ="Miller");



-- 8. WAQTD ENAME AND EMPNO OF THE EMPLOYEES IF EMPLOYEES ARE EARNING MORE THAN ALLEN.


select ename ,empno
from emp
where  sal> (select sal 
               from emp
                  where ename = "allen");



-- 9. WAQTD ENAME AND SALARY OF ALL THE EMPLOYEES WHO ARE EARNING MORE THAN MILLER BUT LESS THAN ALLEN.

select ename ,sal 
from emp
where  sal> (select sal 
               from emp
                  where ename = "miller") and
       sal< (select sal 
               from emp
                  where ename = "allen");
                  
                  



-- 10. WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING IN DEPT 20 AND WORKING IN THE SAME DESIGNATION AS SMITH.

select * 
from emp
where deptno in ('20') AND job = (select job
                                   from emp
                                    where ename = "smith");


-- 11. WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING AS MANAGER IN THE SAME DEPT.AS TURNER.

select * 
from emp
where job =  'manager' AND  deptno = (select deptno
                                      from emp
                                       where ename = 'TURNER');






-- 12. WAQTD NAME AND HIREDATE, OF THE EMPLOYEES HIRED AFTER 1980 AND BEFORE KING.

select ename ,hiredate 
from emp
where hiredate > 1980-12-31 AND hiredate < (select hiredate
                                             from emp
                                                where ename = 'king');



-- 13. WAQTD NAME AND SAL ALONG WITH ANNUAL SAL FOR ALL EMPLOYEES WHOS SAL IS LESS THAN BLAKE AND MORE THAN 3500.
 select ename ,sal ,sal*12
from emp
where sal < (select sal
                from emp
                     where ename ="blake") AND SAL > 3500;




select * from emp;

-- 14. WAQTD ALL THE DETAILS OF EMPLOYEES WHO EARN MORE THAN SCOTT BUT LESS THAN KING.

select * 
from emp
where sal > (select sal
             from emp
             where ename ='Scoot')  AND
      sal < (select sal
             from emp
             where ename ='king');




-- 15. WAQTD NAME OF THE EMPLOYEES WHOS NAME STARTS WITH 'A' AND WORKS IN THE SAME DEPT AS BLAKE.
  
select ename 
from emp 
where ename like 'a%' AND  (select deptno
                             from dept 
                              where ename = "blake");
                              
                              




-- 16. WAQTD NAME AND COMM IF EMPLOYEES EARN COMISSION AND WORK IN THE SAME DESIGNATION AS SMITH.
 select ename ,comm
from emp 
where comm is not null AND job =(select job
                                  from emp 
                                   where ename= 'smith');


-- 17. WAQTD DETAILS OF ALL THE EMPLOYEES WORKING AS CLERK IN THE SAME DEPT AS TURNER.

 select * 
from emp 
where job = 'clerk' AND  deptno = (select deptno 
                                     from emp
                                       where ename = 'turner');


-- 18. WAQTD ENAME, SAL AND DESIGNATION OF THE EMPLOYEES WHOS ANNUAL SALARY IS MORE THAN SMITH AND LESS THAN KING.




SELECT Ename, SAl, Job 
FROM emp 
WHERE Sal*12 > (SELECT Sal*12 FROM emp WHERE EName = 'SMITH') AND
      Sal*12 < (SELECT Sal*12 FROM emp WHERE EName = 'KING');  




-- ASSIGNMENT ON CASE 2:

-- 1. WAQTD DNAME OF THE EMPLOYEES WHOS NAME IS SMITH.
select dname 
from dept
where deptno = (select deptno
                 from emp
                 where ename ="smith");
 


-- 2. WAQTD DNAME AND LOC OF THE EMPLOYEE WHOS ENAME IS KING.

select dname , loc
from dept
where deptno = (select deptno
                 from emp
                 where ename ="smith");


-- 3. WAQTD LOC OF THE EMP WHOS EMPLOYEE NUMBER IS 7902.

select loc 
from dept 
where deptno = (select deptno
                 from emp
                 where empno =7902);

-- 4. WAQTD DNAME AND LOC ALONG WITH DEPTNO OF THE EMPLOYEE WHOS NAME ENDS WITH 'R'.


SELECT dname, loc, deptno
FROM dept
WHERE deptno IN (
    SELECT deptno
    FROM emp
    WHERE ename LIKE '%R'
);


-- 5. WAQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION IS PRESIDENT.

select dname 
from dept
where deptno = (select deptno
                 from emp
                 where job ="president");


-- 6. WAQTD NAMES OF THE EMPLOYEES WORKING IN ACCOUNTING DEPARTMENT.



SELECT Ename 
FROM emp
WHERE DeptNo =(SELECT DeptNo FROM dept Where DName = 'ACCOUNTING');



-- 7. WAQTD ENAME AND SALARIES OF THE EMPLOYEES WHO ARE WORKING IN THE LOCATION CHICAGO.

select ename ,sal
from emp
where deptno = (select deptno
                 from dept
                 where loc ="CHICAGO");


-- 8. WAQTD DETAILS OF THE EMPLOYEES WORKING IN SALES.
select *
from emp
where deptno = (select deptno
                 from dept
                 where dname ="sales");



-- 9. WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF EMPLOYEES ARE WORKING IN NEW YORK.

select *, sal *12
from emp
where deptno = (select deptno
                 from dept
                 where loc ="new york");

-- 10. WAQTD NAMES OF EMPLOYEES WORKING IN OPERATIONS DEPARTMENT.



select ename 
from emp 
where deptno = (select deptno
                 from dept
                 where dname ="OPERATIONS");



