use github
--create table Employee_info(
--id int,
--Name varchar (50),
--GenderId int
--)
--go
--insert into Employee_info values (1,'Mark',1);
--insert into Employee_info values (2,'John',1);
--insert into Employee_info values (3,'Amy',2);
--insert into Employee_info values (4,'Ben',1);
--insert into Employee_info values (5,'Sara',2);
--insert into Employee_info values (6,'David',1);

select * from Employee_info

--using IIF() function with table data
Declare @GenderId int
SET @GenderId = 2

select IIF(@GenderId = 1, 'male', 'female') as Gender

--IIF Function
select Name, GenderId,
IIF(GenderId = 1, 'male', 'female') as Gender from Employee_info

-- Case Statement
select Name, GenderId,
case when GenderId = 1
then 'male'
else 'female'
end as Gender
from Employee_info