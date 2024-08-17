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

--CREATE TRIGGER trInsertEmployee 
--ON Employee
--FOR INSERT
--AS
--BEGIN
--  PRINT 'YOU CANNOT PERFORM INSERT OPERATION'
--  ROLLBACK TRANSACTION
--END

--INSERT INTO Employee VALUES (6, 'Saroj', 7600, 'Male', 1)

--CREATE TRIGGER trUpdateEmployee 
--ON Employee
--FOR UPDATE
--AS
--BEGIn
--  PRINT 'YOU CANNOT PERFORM UPDATE OPERATION'
--  ROLLBACK TRANSACTION
--END

--UPDATE Employee SET Salary = 90000 WHERE Id = 1

--CREATE TRIGGER trDeleteEmployee 
--ON Employee
--FOR DELETE
--AS
--BEGIN
--  PRINT 'YOU CANNOT PERFORM DELETE OPERATION'
--  ROLLBACK TRANSACTION
--END

--DELETE FROM Employee WHERE Id = 1