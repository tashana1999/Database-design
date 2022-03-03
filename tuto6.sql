create database ABC ;
use ABC;

create table COURSE(
coursecode varchar(20) not null primary key,
title varchar(20),
school varchar(20)
 );
 create table UNIT(
 unitcode varchar(20) not null primary key,
 title varchar(20),
 year int
 );
 create table STUDENT(
regno varchar(20)  not null primary key,
name varchar(20),
dob date,
telno int,
coursecode varchar(20),
foreign key(coursecode)references COURSE(coursecode)
);
create table RESULT(
regno varchar(20) ,unitcode varchar(20), 
exammark int,
cwkmark int,
foreign key(regno)references STUDENT(regno),
foreign key(unitcode)references UNIT(unitcode),
CONSTRAINT PK_RESULT PRIMARY KEY (regno,unitcode)
);
insert into COURSE values
('AB12', 'Applied Biology', 'Life Sciences' ),
('CE65', 'Civil Engineerig', 'Engineering'),
('CS30', 'Computing Science', 'Computing');
insert into UNIT values
('ES32', 'Expert Systems', 2),
('PH90', 'Physics', 1),
('MA43', 'Mathematics', 2),
('FP54', 'Food Preservation', 3),
('RD19', 'Relational Databases', 2),
('HA34', 'Human Anatomy', 3),
('ES22', 'Engineering Science', 2);


insert into STUDENT values
 ('P0123', 'John', '1976/02/09', 01322-843311, 'CE65'),
('F4567', 'Sally', '1972/01/01', 020-73318844, 'CS30'),
('F8910', 'Andrew', '1977/12/06', 01322-865833, 'AB12'),
('P7651', 'Brian', '1974/11/21', 020-85466540, 'CS30');
insert into RESULT values
('F4567', 'ES32', 67, 90),
('F4567', 'MA43', 32, 21),
('F4567', 'RD19', 76, 100),
('F8910', 'FP54', 78, 12),
('F8910', 'HA34', 55, 23),
('P7651', 'ES32', 33, 66)

;
select name from STUDENT where dob<'1975/01/01';
SELECT s.regno,s.name,s.dob,s.telno,s.coursecode,c.title
FROM STUDENT s,COURSE c
WHERE s.coursecode=c.coursecode;
select title,year from UNIT where title='Physics' or title='Mathematics'or title='Expert Systems';
use ABC;
SELECT s.regno,avg(exammark) AS 'Average Marks'
FROM student s, result r
WHERE s.regno=r.regno 
GROUP BY s.regno
HAVING avg(exammark)>50;
SELECT s.name,s.regno
FROM STUDENT s,RESULT r,UNIT u
WHERE s.regno=r.regno AND r.unitcode=u.unitcode AND u.unitcode IN (SELECT u.unitcode
								    FROM UNIT u
							            WHERE u.title='Relational Database' OR u.title='Food Preservation');
 SELECT u.year,COUNT(u.unitcode) AS 'Total units'
FROM UNIT u
GROUP BY u.year
ORDER BY u.year desc ;  

SELECT
*FROM STUDENT s,RESULT r,UNIT u
WHERE s.regno=r.regno AND r.unitcode=u.unitcode
GROUP BY s.regno    ;
SELECT u.unitcode,u.title,MAX(r.cwkmark) AS 'Maximum',MIN(r.cwkmark) AS 'Minimum'
FROM RESULT r,UNIT u
WHERE r.unitcode=u.unitcode
GROUP BY r.unitcode  ;
SELECT COUNT(s.regno) AS 'Student count' 
FROM STUDENT s,COURSE c
WHERE c.coursecode=s.coursecode AND c.school='Life Science'                        