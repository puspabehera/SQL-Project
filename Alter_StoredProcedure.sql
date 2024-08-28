-- Create Employee Table
--CREATE TABLE Employees
--(
--  ID INT PRIMARY KEY,
--  Name VARCHAR(50),
--  Gender VARCHAR(50),
--  DOB DATETIME,
--  DeptID INT
--)
--GO

---- Populate the Employee Table with test data
--INSERT INTO Employees VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1)
--INSERT INTO Employees VALUES(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2)
--INSERT INTO Employees VALUES(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2)
--INSERT INTO Employees VALUES(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3)
--INSERT INTO Employees VALUES(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1)
--INSERT INTO Employees VALUES(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2)
--GO

CREATE PROCEDURE spGetEmployees
As
BEGIN
  SELECT Name,Gender, DOB FROM Employees
END

-- How to change the body of a stored procedure
-- User Alter procedure to change the body
ALTER PROCEDURE spGetEmployees
AS
BEGIN
  SELECT Name, Gender, DOB 
  FROM Employees
  ORDER BY Name
END

-- To change the procedure name from spGetEmployee to spGetEmployee1
-- Use sp_rename system defined stored procedure
EXEC sp_rename 'spGetEmployees', 'spGetEmployees1'