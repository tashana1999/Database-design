--CREATE TABLE Customer(
--CustomerID varchar(50) NOT NULL PRIMARY KEY,
--FirstName varchar(50),
--LastName varchar(50),
--EmailAddress varchar(50),
--Phone varchar(10),
--City varchar(20),
--State varchar(10),
--Note varchar(50)
--);


--INSERT INTO Customer VALUES 
--('Cust101', 'Kevin' , 'Stewart' , 'kevin@gmail.com', '9201234567','Seattle','WA','Demanding'),--('Cust102',  'Cheryl', 'Davis', 'cheryl@gmail.com', '4203457234','Salt Lake City', 'UT' ,'FCREATE TABLE Unit)
--(Cust105', 'Emily Roberts', 'emily@gmail.com', 9456784656, 'Seattle',' WA',--'New customer')'Cust104 ','Ilean Kim',' ilean@gmail.com', 9876345127,' Huntington ','NY',--'Has three kids'
--'Cust103' ,'Dorothy Weber', 'dorothy@gmail.com', 5678934567 ,'Green Bay', 'WI',--'Orders a lot'



--CREATE SEQUENCE id MINVALUE 1 START WITH 1 INCREMENT BY 1;

CREATE TABLE Orders(
OrderID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
CustomerID varchar(50) FOREIGN KEY REFERENCES Customer(CustomerID),
Order_Date date,
CookiesOrder int,
Revenue money,
OrderShipped bit,
RevenuePerCookie float,
);
INSERT INTO Orders (CustomerID, Order_Date, CookiesOrder, Revenue,OrderShipped,RevenuePerCookie)  VALUES
('Cust101' ,'2021-02-23', 50, 100, 0, 2),
('Cust102', '2021-02-20', 100, 150, 0, 1.5),
('Cust103', '2021-02-03', 150,300,1, 2),
('Cust102', '2021-02-21' ,75,150,0, 2),
('Cust105', '2021-02-01', 200,140 ,1, 2.05);


SELECT * FROM Orders;




--SELECT * FROM Customer;





