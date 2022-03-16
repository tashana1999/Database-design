create database EMP;
create table EMP_1(
EMP_NUM char(3) not null primary key,
EMP_LNAME varchar(15),
EMP_FNAME varchar(15),
EMP_INITIAL char(1),
EMP_HIREDATE date,
JOB_CODE char(3)
);
insert into EMP_1 values
('101', 'News', 'John', 'G', '1998/11/08', '502'),
('102', 'Senior', 'David', 'H', '1987/07/12', '501'),
('103', 'Arbough', 'June', 'E', '1994/12/01', '500'),
('104', 'Ramoras', 'Anne', 'K',  '1985/11/15', '501'),
('105', 'Johnson', 'Alice', 'K', '1991/02/01', '502'),
('106', 'Smithfield', 'William', null, '2002/06/22', '500'),
('107', 'Alonzo', 'Maria', 'D', '1991/10/10', '500'),
('108','Washington', 'Ralph', 'B', '1989/08/22', '501'),
('109', 'Smith', 'Larry', 'W', '1995/07/18', '501');
select * from EMP_1 where JOB_CODE='502';
update EMP_1 set JOB_CODE='501' where EMP_NUM='106';
DELETE FROM EMP_1 WHERE EMP_NUM='106'; 
create table EMP_2(
EMP_NUM char(3) not null primary key,
EMP_LNAME varchar(15),
EMP_FNAME varchar(15),
EMP_INITIAL char(1),
EMP_HIREDATE date,
JOB_CODE char(3),
EMP_PCT numeric(4,2),
PROJ_NUM CHAR(3)
);
insert into EMP_2 values
('101', 'News', 'John', 'G', '1998/11/08', '502', 5.00, null),
('102', 'Senior', 'David', 'H', '1987/07/12', '501', 8.00, null),
('103', 'Arbough', 'June', 'E', '1994/12/01', '500', 3.85, null),
('104', 'Ramoras', 'Anne', 'K',  '1985/11/15', '501', 10.00, null),
('105', 'Johnson', 'Alice', 'K', '1991/02/01', '502', 5.00, null),
('106', 'Smithfield', 'William', null, '2002/06/22', '500', 6.20, null),
('107', 'Alonzo', 'Maria', 'D', '1991/10/10', '500', 5.15, null),
('108','Washington', 'Ralph', 'B', '1989/08/22', '501', 10.00, null),
('109', 'Smith', 'Larry', 'W', '1995/07/18', '501', 2.00, null);

select * from EMP_2;
update EMP_2 set PROJ_NUM='18' where JOB_CODE='500';
update EMP_2 set PROJ_NUM='25' where JOB_CODE>='502';
update EMP_2 set PROJ_NUM='14' where JOB_CODE>='501' and EMP_HIREDATE<'1992/01/01';
drop table TEMP_1;
select * from EMP_2 where EMP_LNAME like 'Smith%';