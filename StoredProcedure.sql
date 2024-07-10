
If OBJECT_ID('tempdb..#person') is not null
drop table #person

go

-- Create the table
CREATE TABLE #person (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert records into the table
INSERT INTO #person (id, first_name, last_name, age, city) VALUES
(1, 'John', 'Doe', 28, 'New York'),
(2, 'Jane', 'Smith', 34, 'Los Angeles'),
(3, 'Michael', 'Johnson', 22, 'Chicago'),
(4, 'Emily', 'Davis', 45, 'Houston'),
(5, 'Chris', 'Brown', 31, 'Phoenix'),
(6, 'Amanda', 'Wilson', 27, 'Philadelphia'),
(7, 'Daniel', 'Martinez', 38, 'San Antonio'),
(8, 'Laura', 'Garcia', 25, 'San Diego'),
(9, 'James', 'Rodriguez', 29, 'Dallas'),
(10, 'Sarah', 'Lee', 33, 'San Jose');

select * from #person;

--stored procedure without parameter

create Procedure spGetPerson
as
begin
   select first_name, age from #person
end

exec spGetPerson

--stored procedure with parameter

create proc spGetPersonByAgeAndCity
@age int,
@city varchar(50)

as
begin
   select first_name, age, city from #person
   where age =@age
   and city = @city
end;

execute spGetPersonByAgeAndCity 22,'chicago';

execute spGetPersonByAgeAndCity @age= 22,@city='chicago';

--To view the text, of the stored procedure

sp_helptext spGetPerson
sp_helptext spGetPersonByAgeAndCity

--Alter/ change the stored procedure 
Alter Procedure spGetPerson
as
begin
   select first_name, age from #person order by first_name 
end

--Drop the stored procedure
Drop procedure spGetPerson

--With encrypted stored procedure

alter Procedure spGetPerson
with encryption
as
begin
   select first_name, age from #person
end
