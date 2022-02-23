use company;
SELECT dept.DNAME, emp.ENAME, dept.LOC
FROM dept
INNER JOIN emp ON dept.DEPTNO=emp.DEPTNO
where SAL>1500 order by DNAME;
select emp.ENAME,emp.JOB,emp.SAL,salgrade.GRADE
from emp
inner join salgrade where emp.sal between salgrade.LOSAL and salgrade.HISAL group by ENAME order by GRADE;
select emp.ENAME,emp.JOB,emp.SAL,salgrade.GRADE
from emp
inner join salgrade where emp.sal between salgrade.LOSAL and salgrade.HISAL group by ENAME having GRADE=3 order by GRADE;
SELECT emp.ENAME,emp.JOB,emp.SAL,salgrade.GRADE,dept.DNAME ,dept.DEPTNO
FROM emp
inner join dept on emp.DEPTNO=dept.DEPTNO
inner join salgrade   where emp.sal between salgrade.LOSAL and salgrade.HISAL group by emp.ENAME order by salgrade.GRADE desc;
select EMPNO,ENAME,MGR from emp;
SELECT e.EMPNO, e.ENAME, e.MGR, d.ENAME AS MGRNAME
FROM emp e 
JOIN emp d 
ON e.MGR=d.EMPNO;

select e.ENAME,e.SAL,m.ENAME,m.SAL from emp e,emp m where e.MGR=m.EMPNO and e.SAL>m.SAL
 
