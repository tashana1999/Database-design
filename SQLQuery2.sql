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
--('ES32', 'Expert Systems',2),

--SELECT * FROM Unit;



--INSERT INTO Course VALUES
--('AB12', 'Appied Biology', 'Life Science'),

--SELECT * FROM Course;





--INSERT INTO Student VALUES


--SELECT * FROM Student;






--INSERT INTO Result VALUES
--('F4567','ES32',67,90),