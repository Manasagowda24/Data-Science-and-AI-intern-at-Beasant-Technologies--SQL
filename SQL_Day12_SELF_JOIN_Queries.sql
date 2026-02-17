-- ASSIGNMENT ON SELF JOIN :
use employee;

-- 1.WAQTD NAME OF THE EMPLOYEE AND HIS MANAGER'S NAME IF EMPLOYEE IS WORKING AS CLERK
select e1.ename ,e2.ename 
from emp e1,emp e2
where e1.mgr=e2.empno and e1.job = "clerk";

-- 2.WAQTD NAME OF THE EMPLOYEE AND MANAGER'S DESIGNATION IF MANAGER WORKS IN DEPT 10 OR 20
select e1.ename , e2.job
from emp e1,emp e2
where e1.mgr=e2.empno and e2.deptno in (10,20);

-- 3.WAQTD NAME OF THE EMP AND MANAGERS SALARY IF EMPLOYEE AND MANAGER BOTH EARN MORE THAN 2300
select e1.ename ,e2.sal
from emp e1,emp e2
where e1.mgr=e2.empno and e1.sal > 2300 and  e2.sal > 2300;

 
-- 4.WAQTD EMP NAME AND MANAGER'S HIREDATE IF EMPLOYEE WAS HIRED BEFORE1982
select e1.ename , e2.hiredate 
from emp e1,emp e2
where e1.mgr=e2.empno and e1.hiredate < "1982-01-01";


-- 5.WAQTD EMP NAME AND MANAGER'S COMM IF EMPLOYEE WORKS AS SALESMAN AND MANAGER WORKS IN DEPT 30
select e1.ename ,e2.comm
from emp e1,emp e2
where e1.mgr=e2.empno and e1.job ='salesman' and e2.deptno in (30);

-- 6.WAQTD EMP NAME AND MANAGER NAME AND THEIR SALARIES IF EMPLOYEE EARNS MORE THAN MANAGER
select e1.ename ,e2.ename  ,e2.sal
from emp e1,emp e2
where e1.mgr=e2.empno and e1.sal > e2.sal;

-- 7.WAQTD EMP NAME AND HIREDATE MANAGER NAME AND HIREDATE IF MANAGER WAS HIRED BEFORE EMPLOYEE

select e1.ename , e2.hiredate ,e2.ename
from emp e1,emp e2
where e1.mgr=e2.empno and e2.hiredate  < e1. hiredate;