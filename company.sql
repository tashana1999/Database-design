create database Company;
use Company;
create table DEPT(
DEPTNO int not null primary key,
DNAME varchar(30),
LOC varchar(30)
);
create table EMP(
EMPNO int not null primary key,
ENAME varchar(30),
JOB varchar(30),
MGR int,
HIREDATE date,
SAL int,
COMM int,
DEPTNO int,
foreign key(DEPTNO)references DEPT(DEPTNO)
);
create table SALGRADE(
GRADE int not null primary key,
LOSAL int,
HISAL int
);
insert into DEPT values
(10, 'ACCOUNTING', 'NEWYORK'),
(20, 'RESEARCH', 'DALLAS'),
 (30, 'SALES', 'CHICAGO'),
 (40, 'OPERATIONS', 'BOSTON');
 insert into EMP values
 (7369, 'SMITH', 'CLERK', 7902, '1983/01/13', 800, null , 20),
 (7499, 'ALLEN', 'SALESMAN', 7698, '1983/08/15', 1600, 300, 30),
 (7521, 'WARD', 'SALESMAN', 7698, '1984/03/26', 1250, 500, 30),
 (7566, 'JONES', 'MANAGER', 7839, '1983/10/31', 2975, null, 20),
 (7654, 'MARTIN', 'SALESMAN', 7698, '1983/12/05', 1250, 1400, 30),
 (7698, 'BLAKE', 'MANAGER', 7839, '1984/01/11', 2850, null, 30),
 (7782, 'CLARK', 'MANAGER', 7839, '1984/05/14', 2450, null, 10),
 (7788, 'SCOTT', 'ANALYST', 7566, '1984/03/05', 3000, null, 20),
 (7839, 'KING', 'PRESIDENT', null, '1984/07/09', 5000, null, 10),
 (7844, 'TURNER', 'SALESMAN', 7698, '1984/06/04', 1500, 0, 30),
 (7876, 'ADAMS', 'CLERK', 7788, '1984/06/04', 1100, null, 20),
 (7900, 'JAMES', 'CLERK', 7698, '1984/07/23', 950, null, 30),
 (7902, 'FORD', 'ANALYST', 7566, '1983/12/05', 3000, null, 20),
 (7934, 'MILLER', 'CLERK', 7782, '1983/11/21', 1300, null, 10);
 insert into SALGRADE values
 (1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);
SELECT
ENAME, DEPTNO, SAL

FROM EMP
WHERE SAL <2000 AND SAL>1000;
select JOB
FROM EMP;
 select distinct JOB from EMP order by JOB ASC;
 select  *from EMP where DEPTNO=10 or DEPTNO=30; 
select  ENAME, JOB FROM EMP where DEPTNO=20 AND JOB='CLERK';
 
 select DEPTNO,DNAME from DEPT order by DNAME ASC;
 
 SELECT 
    ENAME, JOB, SAL, COMM
FROM
  EMP
WHERE
    COMM = 'null'; 
