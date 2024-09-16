---- Create Departments Table
--CREATE TABLE Departments
--(
--  ID INT PRIMARY KEY,
--  DepartmentName VARCHAR(50)
--)
--GO

---- Populate the Departments Table with test data
--INSERT INTO Departments VALUES(1, 'IT')
--INSERT INTO Departments VALUES(2, 'HR')
--INSERT INTO Departments VALUES(3, 'Sales')
--GO

---- Create Employees Table
--CREATE TABLE IT_Employees
--(
--  ID INT PRIMARY KEY,
--  Name VARCHAR(50),
--  Gender VARCHAR(50),
--  DOB DATETIME,
--  DeptID INT FOREIGN KEY REFERENCES Department(ID) 
--)
--GO

---- Populate the IT_Employees Table with test data
--INSERT INTO IT_Employees VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1)
--INSERT INTO IT_Employees VALUES(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2)
--INSERT INTO IT_Employees VALUES(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2)
--INSERT INTO IT_Employees VALUES(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3)
--INSERT INTO IT_Employees VALUES(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1)
--INSERT INTO IT_Employees VALUES(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2)
--GO

select * from Departments;
select * from IT_Employees;

--create an Inline Table-Valued Function that returns the Employees by Gender from the Employees table.
--CREATE FUNCTION FN_GetIT_EmployeesByGender
--(
--  @Gender VARCHAR(50)
--)
--RETURNS TABLE
--AS
--RETURN (SELECT ID, Name, Gender, DOB, DeptID FROM IT_Employees WHERE Gender = @Gender)

-- join the Employees returned by the inline table-valued function with the Departments table

SELECT Name, Gender, DOB, DepartmentName 
FROM FN_GetIT_EmployeesByGender('Male') Emp
JOIN Departments Dept on Dept.ID = Emp.DeptID

--OR--
--CREATE FUNCTION FN_EmployeesByGender
--(
--  @Gender VARCHAR(50)
--)
--RETURNS TABLE
--AS
--RETURN (
--       SELECT Emp.ID, Name, Gender, DOB, DepartmentName 
--    FROM IT_Employees Emp
--    JOIN DepartmentS Dept on Emp.DeptId = Dept.Id
--    WHERE Gender = @Gender)

SELECT * FROM dbo.FN_EmployeessByGender('male');



