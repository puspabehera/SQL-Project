---- Create Employee Table
--CREATE TABLE Employee
--(
--  ID INT PRIMARY KEY,
--  Name VARCHAR(50),
--  Gender VARCHAR(50),
--  DOB DATETIME,
--  DeptID INT
--)
--GO
----Insert data into Employee Tables
--INSERT INTO Employee VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1)
--INSERT INTO Employee VALUES(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2)
--INSERT INTO Employee VALUES(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2)
--INSERT INTO Employee VALUES(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3)
--INSERT INTO Employee VALUES(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1)
--INSERT INTO Employee VALUES(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2)

--** SIMPLE View / UPDATEABLE View /DYNAMIC View **
-- View with all columns 
--CREATE VIEW vwAllEmployees1 
--AS 
--SELECT * FROM Employee

---- View with specific columns
--CREATE VIEW vwAllEmployees2 
--AS 
--SELECT ID, Name, Gender, DOB, DeptID 
--FROM Employee

SELECT * from vwAllEmployees1;
SELECT * from vwAllEmployees2;

--Insert Operation on Simple Views in SQL Server
INSERT INTO vwAllEmployees1 (ID, Name, Gender, DOB, DeptID) VALUES(7, 'Rohit', 'Male', '1995-04-19 10:53:27.060', 3);

select * from Employee
SELECT * from vwAllEmployees1;

--Update Operation on Simple View:
UPDATE vwAllEmployees1 SET
  Name = 'Rohit Kumar',
  DOB = '1996-02-29 10:53:27.060',
  DeptID = 1
WHERE ID = 7

select * from Employee
SELECT * from vwAllEmployees1;

--Delete Operation on Simple View:

DELETE FROM vwAllEmployees1 where ID = 7;

select * from Employee
SELECT * from vwAllEmployees1;
