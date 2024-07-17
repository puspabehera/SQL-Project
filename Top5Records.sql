if OBJECT_id('tempdb..#persons') is not null
drop table #persons


-- Create the #persons table
CREATE TABLE #persons (
    PersonID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Email NVARCHAR(100),
    City NVARCHAR(50)
);

-- Insert 8 records into the #persons table
INSERT INTO #persons (PersonID, FirstName, LastName, DateOfBirth, Email, City)
VALUES 
    (1, 'John', 'Doe', '1990-01-01', 'john.doe@example.com', 'New York'),
    (2, 'Jane', 'Smith', '1985-05-15', 'jane.smith@example.com', 'Los Angeles'),
    (3, 'Michael', 'Johnson', '1979-07-20', 'michael.johnson@example.com', 'Chicago'),
    (4, 'Emily', 'Davis', '1992-09-10', 'emily.davis@example.com', 'Houston'),
    (5, 'David', 'Brown', '1988-03-30', 'david.brown@example.com', 'Phoenix'),
    (6, 'Sarah', 'Miller', '1995-12-05', 'sarah.miller@example.com', 'Philadelphia'),
    (7, 'James', 'Wilson', '1982-11-22', 'james.wilson@example.com', 'San Antonio'),
    (8, 'Jessica', 'Taylor', '1998-08-18', 'jessica.taylor@example.com', 'San Diego');


select * from #persons
--execute top 5 records in a table.
--using dense_rank
go
with cte as
(
select firstname,city,
DENSE_RANK () over ( order by city) as denserank
from #persons
)
select * from cte
where denserank <=5
go
--using row_number

with CTE1 as(
select *,
ROW_NUMBER () over ( order by firstname) as rownumber
from #persons
)
select * from CTE1
where rownumber <=5

-- using top clause
select top 5 * from #persons
order by FirstName asc;

--using offset 
select * from #persons
order by FirstName
offset 0 rows
fetch next 5 rows only;


