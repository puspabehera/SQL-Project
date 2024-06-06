--CREATE TABLE Employee_dev (
--    EmployeeID INT PRIMARY KEY,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    Department VARCHAR(50),
--    Salary DECIMAL(10, 2)
--);

--go

--INSERT INTO Employee_dev (EmployeeID, FirstName, LastName, Department, Salary)
--VALUES (1, 'John', 'Doe', 'IT', 50000.00),
--    (2, 'Jane', 'Smith', 'HR', 55000.00),
--	 (3, 'Michael', 'Johnson', 'Finance', 60000.00),
--    (4, 'Emily', 'Brown', 'Marketing', 52000.00),
--    (5, 'David', 'Davis', 'IT', 48000.00);


select * from Employee_dev

CREATE PROCEDURE GetEmployeeByID
    @EmployeeID INT
AS
BEGIN
    SELECT *
    FROM Employee_dev
    WHERE EmployeeID = @EmployeeID;
END;
 
 go

 EXEC GetEmployeeByID @EmployeeID = 1;
