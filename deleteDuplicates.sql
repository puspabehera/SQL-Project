--CREATE TABLE IT_Employees (
--    EmployeeID INT PRIMARY KEY,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    Department VARCHAR(50),
--    Position VARCHAR(50),
--    Salary DECIMAL(10, 2)
--);

--INSERT INTO IT_Employees (EmployeeID, FirstName, LastName, Department, Position, Salary)
--VALUES (1, 'John', 'Doe', 'Development', 'Software Engineer', 70000.00),
--       (2, 'Jane', 'Smith', 'Development', 'Software Engineer', 75000.00),
--       (3, 'Alice', 'Brown', 'QA', 'QA Analyst', 65000.00),
--       (4, 'Bob', 'Johnson', 'QA', 'QA Engineer', 62000.00),
--       (5, 'Eve', 'Davis', 'HR', 'HR Specialist', 60000.00),
--       (6, 'Charlie', 'Miller', 'HR', 'HR Manager', 58000.00),
--       (7, 'John', 'Doe', 'Development', 'Software Engineer', 70000.00), -- Duplicate
--       (8, 'Alice', 'Brown', 'QA', 'QA Analyst', 65000.00), -- Duplicate
--       (9, 'Eve', 'Davis', 'HR', 'HR Specialist', 60000.00), -- Duplicate
--       (10, 'Charlie', 'Miller', 'HR', 'HR Manager', 58000.00), -- Duplicate
--       (11, 'David', 'Wilson', 'Development', 'DevOps Engineer', 77000.00),
--       (12, 'Emma', 'Moore', 'Development', 'Full Stack Developer', 72000.00),
--       (13, 'Grace', 'Taylor', 'QA', 'QA Lead', 69000.00),
--       (14, 'Henry', 'Anderson', 'HR', 'Recruiter', 61000.00),
--       (15, 'Ivy', 'Thomas', 'Development', 'Backend Developer', 73000.00);

---- Select the data to verify the entries
--SELECT * FROM IT_Employees;
------------------------------------

select * from IT_Employees

-- delete duplicates record in a table

--using CTE & rownumber
with result as
(
select salary,
ROW_NUMBER () over (partition by salary order by salary desc) as rownumber
from IT_Employees
)
delete  from result
where rownumber > 1