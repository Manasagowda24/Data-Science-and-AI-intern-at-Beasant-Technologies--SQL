use employee;

select * from emp;


-- ASSIGNMENT ON EMP AND MANAGER RELATION

-- 1.WAQTD SMITHS REPORTING MANAGER'S NAME
select ename
from emp
where empno = (select mgr
               from emp
                where ename= 'smith');
 


-- 2.WAQTD ADAMS MANAGER'S MANAGER NAME
select ename
from emp
where empno=(select mgr
             from emp 
             where empno =(select mgr
                           from emp
                              where ename= 'adams'));


-- 3.WAQTD DNAME OF JONES MANAGER

SELECT dname
FROM dept
WHERE deptno = (
    SELECT deptno
    FROM emp
    WHERE empno = (
        SELECT mgr
        FROM emp
        WHERE ename = 'JONES'
    )
);


-- 4.WAQTD MILLER'S MANAGER'S SALARY
select sal
from emp
where empno= (select mgr
               from emp
                where ename= 'miller');


-- 5.WAQTD LOC OF SMITH'S MANAGER'S MANAGER.
select loc
from dept
where deptno = (select deptno
               from emp
                where empno=(select mgr
                             from emp
                               where ename= 'smith'));
			

-- 6.WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE
select ename
from emp
where mgr = (select empno
               from emp
                where ename = 'blake');
                
            

-- 7.WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING
select count(*)
from emp
where mgr = (select empno
               from emp
                where ename = 'king');
                




-- 8.WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES
select *
from emp
where mgr = (select empno
               from emp
                where ename = 'jones');


-- 9.WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER
select ename
from emp
where mgr =  (select mgr
				from emp
				where ename = 'blake');

-- 10.WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER
select count(*)
from emp
where mgr = (select empno
               from emp
                where ename = 'ford');


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ASSIGNMENT ON INNER JOIN :
-- 1. NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE EMPLOYEES.
select ename ,loc
from dept,emp
where emp.deptno =  dept.deptno;


-- 2. WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE WORKING IN ACCOUNTING.
select dname ,sal 
from emp, dept
where emp.deptno = dept.deptno And dname = "ACCOUNTING";



-- 3. WAQTD DNAME AND ANNUAL SALARY FOR ALL EMPLOYEES WHOS SALARY IS MORE THAN 2340
select dname ,sal*12 
from dept,emp
where emp.deptno = dept.deptno and sal > 2340;



-- 4. WAQTD ENAME AND DNAME FOR EMPLOYEES HAVING CAHARACTER 'A' IN THEIR DNAME

select dname ,ename 
from emp, dept
where emp.deptno = dept.deptno And dname like "%a%";


-- 5. WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES WORKING AS SALESMAN
select dname ,ename
from emp, dept
where emp.deptno = dept.deptno And job = "salesman";


-- 6. WADTD DNAME AND JOB FOR ALL THE EMPLOYEES WHOS JOB AND DNAME STARTS WITH CHARACTER 'S'
select dname ,job
from emp, dept
where emp.deptno = dept.deptno And dname like "s%" and job like "s%";




-- 7. WAQTD DNAME AND MGR NO FOR EMPLOYEES REPORTING TO 7839
select dname ,mgr
from emp, dept
where emp.deptno = dept.deptno And mgr = 7839;


-- 8. WAQTD DNAME AND HIREDATE FOR EMPLOYEES HIRED AFTER 83 INTO ACCOUNTING OR RESEARCH DEPT
select dname ,hiredate
from emp, dept
where emp.deptno = dept.deptno And hiredate > 83/12/31 and dname in ('accounting' , 'research');


-- 9. WAQTD ENAME AND DNAME OF THE EMPLOYEES WHO ARE GETTING COMM IN DEPT 10 OR 30
select dname ,ename 
from emp, dept
where emp.deptno = dept.deptno And emp.comm is not null and emp.deptno  in (10,30)  ;


-- 10. WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES WHO'S EMPNO ARE (7839,7902) AND ARE WORKING IN LOC NEW YORK
select dname ,empno 
from emp, dept
where emp.deptno = dept.deptno And emp.empno in (7839,7902) and dept. loc IN ('NEW YORK');



