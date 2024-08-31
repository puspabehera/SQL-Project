---- Create Employee Table
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

--Create a procedure that will take the id value of an employee and return the name of that employee using the output parameter.

CREATE PROCEDURE spGetEmplloyeeNameById1
  @ID INT,
  @Name VARCHAR(30) OUTPUT
AS
BEGIN
  SELECT @Name = Name FROM Employee WHERE ID = @ID
END
GO

-- For calling the procedure:
DECLARE @EmployeeName VARCHAR(30)
EXECUTE spGetEmplloyeeNameById1 3, @EmployeeName OUTPUT
PRINT @EmployeeName

--Now let’s achieve the same thing using return status value.

CREATE PROCEDURE spGetEmplloyeeNameById
  @ID INT
AS
BEGIN
  RETURN (SELECT Name FROM Employee WHERE ID = @ID)
END
GO

-- For calling the procedure:
DECLARE @EmployeeName VARCHAR(30)
EXECUTE @EmployeeName = spGetEmplloyeeNameById2 3
PRINT @EmployeeName

--O/P => Conversion failed when converting the varchar value 'Anurag' to data type int.

-- in SQL Server by using the return values, we can return only one integer.
--It is not possible, to return more than one value using return values,
--whereas in output parameters, we can return any data type and a stored procedure
--can have more than one output parameter.