if object_id('tempdb..#Employee') is not null
drop table #Employee


-- Create #Employee Table
CREATE TABLE #Employee
(
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(50),
  DOB DATETIME,
  DeptID INT
)
GO

-- Populate the #Employee Table with test data
INSERT INTO #Employee VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1)
INSERT INTO #Employee VALUES(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2)
INSERT INTO #Employee VALUES(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2)
INSERT INTO #Employee VALUES(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3)
INSERT INTO #Employee VALUES(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1)
INSERT INTO #Employee VALUES(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2)
GO

CREATE PROCEDURE spGetEmployeeCountByGender
  @Gender VARCHAR(30),
  @EmployeeCount INT OUTPUT
AS
BEGIN
  SELECT @EmployeeCount = COUNT(ID)
  FROM    #Employee
  WHERE     Gender = @Gender
END

go

DECLARE @EmployeeTotal INT
EXECUTE spGetEmployeeCountByGender 'Male', @EmployeeTotal output
PRINT @EmployeeTotal 
-----------------

--Whether it will print null or not check the following:

DECLARE @EmployeeTotal INT
EXECUTE spGetEmployeeCountByGender'Male', @EmployeeTotal
IF (@EmployeeTotal  IS NULL)
  PRINT '@EmployeeTotal IS NULL'
ELSE
  PRINT '@EmployeeTotal IS NOT NULL'