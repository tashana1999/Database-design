--CREATE TABLE Unit(
--unitcode varchar(4) NOT NULL PRIMARY KEY,
--title varchar(20),
--year int
--);

--CREATE TABLE Course(
--coursecode varchar(4) NOT NULL PRIMARY KEY,
--title varchar(25),
--school varchar(25)
--);

--CREATE TABLE Student(
--regno varchar(5) NOT NULL PRIMARY KEY,
--name varchar(20),
--dob date,
--telno varchar(12),
--coursecode varchar(4) FOREIGN KEY REFERENCES Course(coursecode)
--);



--CREATE TABLE Result(
--regno varchar(5) NOT NULL  FOREIGN KEY REFERENCES Student(regno) ,
--unitcode varchar(4) NOT NULL  FOREIGN KEY REFERENCES Unit(unitcode),
--exammark int,
--cwkmar int,
--PRIMARY KEY(regno, unitcode)
--);


--INSERT INTO Unit VALUES
--('ES32', 'Expert Systems',2),--('PH90','Physics',1),--('MA43','Mathematics',2),--('FP54','Food Presevation', 3),--('RD19','Relational Database',2),--('HA34', 'Human Anatomy',3),--('ES22', 'Engineering Science',2);

--SELECT * FROM Unit;



--INSERT INTO Course VALUES
--('AB12', 'Appied Biology', 'Life Science'),--('CE65', 'Civil Engineering','Engineering'),--('CS30','Computing Science','Computing');

--SELECT * FROM Course;





--INSERT INTO Student VALUES--('P0123','John','1976-02-09','01322-843311','CE65'),--('F4567','Sally','1972-01-01','020-73318844','CS30'),--('F8910','Andrew','1977-12-06','01322-865833','AB12'),--('P7651','Brian','1974-11-21','020-85466540','CS30');


--SELECT * FROM Student;






--INSERT INTO Result VALUES
--('F4567','ES32',67,90),--('F4567','MA43',32,21),--('F4567','RD19',76,100),--('F8910','FP54',78,12),--('F8910','HA34',55,23),--('P7651','ES32',33,66);--SELECT * FROM Result;