---- Create Employee table
--CREATE TABLE Employee
--(
--  Id int Primary Key,
--  Name nvarchar(30),
--  Salary int,
--  Gender nvarchar(10),
--  DepartmentId int
--)
--GO

---- Insert data into Employee table
--INSERT INTO Employee VALUES (1,'Pranaya', 5000, 'Male', 3)
--INSERT INTO Employee VALUES (2,'Priyanka', 5400, 'Female', 2)
--INSERT INTO Employee VALUES (3,'Anurag', 6500, 'male', 1)
--INSERT INTO Employee VALUES (4,'sambit', 4700, 'Male', 2)
--INSERT INTO Employee VALUES (5,'Hina', 6600, 'Female', 3)

-- Create EmployeeAudit Table
CREATE TABLE EmployeeAudit
(
  ID INT IDENTITY(1,1) PRIMARY KEY,
  AuditData VARCHAR(MAX),
  AuditDate DATETIME
)
--AFTER TRIGGER for INSERT Event 
CREATE TRIGGER tr_Employee_For_Insert
ON Employee
FOR INSERT
AS
BEGIN

  DECLARE @ID INT
  DECLARE @Name VARCHAR(100)
  DECLARE @AuditData VARCHAR(100)

  -- Get the ID and Name from the INSERTED Magic table
  SELECT @ID = ID, @Name = Name FROM INSERTED

  -- Set the AuditData to be stored in the EmployeeAudit table
  SET @AuditData = 'New employee Added with ID  = ' + Cast(@ID AS VARCHAR(10)) + ' and Name ' + @Name

  -- Insert the data into the EmployeeAudit table
  INSERT INTO EmployeeAudit (AuditData, AuditDate) VALUES(@AuditData, GETDATE())
END

--INSERT INTO Employee VALUES (6, 'Saroj', 3300, 'Male', 2);

SELECT * FROM Employee;
SELECT * FROM EmployeeAudit;
