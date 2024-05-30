--CREATE TABLE Employees (
--    EmployeeID INT,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    Department VARCHAR(50),
--    Salary INT
--);
--go
--INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
--(1, 'John', 'Doe', 'HR', 60000),
--(2, 'Jane', 'Smith', 'Finance', 75000),
--(3, 'Michael', 'Johnson', 'IT', 80000),
--(4, 'Emily', 'Davis', 'Marketing', 65000);

--go
--CREATE TABLE Managers (
--    ManagerID INT,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    Department VARCHAR(50),
--    Salary INT
--);
--go
--INSERT INTO Managers (ManagerID, FirstName, LastName, Department, Salary) VALUES
--(1, 'Michael', 'Johnson', 'IT', 90000),
--(2, 'Sarah', 'Williams', 'Finance', 85000),
--(3, 'David', 'Brown', 'HR', 70000),
--(4, 'Emily', 'Davis', 'Marketing', 75000);


select * from Employees;
select * from Managers;

--UNION : Union will return only distinct values, duplicates data will not allowed.
SELECT FirstName, LastName, Department, Salary FROM Employees
UNION
SELECT FirstName, LastName, Department, Salary FROM Managers;

--UNION ALL : Union all returns all values from both tables , duplicates data also allow.
SELECT FirstName, LastName, Department, Salary FROM Employees
UNION ALL
SELECT FirstName, LastName, Department, Salary FROM Managers;

--INTERSECT : Intersect returns only common row.
SELECT FirstName, LastName, Department, Salary FROM Employees
INTERSECT
SELECT FirstName, LastName, Department, Salary FROM Managers;

--EXCEPT : Except returns only left side table data, common data will not allowed.
SELECT FirstName, LastName, Department, Salary FROM Employees
EXCEPT
SELECT FirstName, LastName, Department, Salary FROM Managers;

 