--CREATE TABLE Developer (
--    id INT PRIMARY KEY,
--    first_name VARCHAR(50),
--    last_name VARCHAR(50),
--    position VARCHAR(50),
--    hired_date DATE
--);

--go

---- Insert  data for the last two years
--INSERT INTO Developer (id, first_name, last_name, position, hired_date)

--VALUES  (1, 'John', 'Doe', 'Software Engineer', '2023-01-15'),
--        (2, 'Jane', 'Smith', 'Project Manager', '2023-12-01'),
--        (3, 'Emily', 'Johnson', 'Data Analyst', '2023-08-23'),
--        (4, 'Michael', 'Williams', 'DevOps Engineer', '2023-05-19'),
--        (5, 'Sarah', 'Brown', 'Product Manager', '2023-11-10'),
--        (6, 'David', 'Jones', 'UX Designer', '2024-05-05'),
--        (7, 'Chris', 'Davis', 'Business Analyst', '2023-03-22'),
--        (8, 'Amanda', 'Miller', 'QA Engineer', '2023-07-30'),
--        (9, 'Brian', 'Wilson', 'Backend Developer', '2024-03-14'),
--        (10, 'Jessica', 'Moore', 'HR Specialist', '2023-09-27');
 

 select * from Developer ;

 --query to find employees hired in last n year.
 select *,DATEDIFF (year, hired_date, getdate()) as diff
 from Developer
 where DATEDIFF (year, hired_date, getdate())
 between 1 and 2
order by hired_date desc;

 --query to find employees hired in last n months.
 select *,  datediff (month, hired_date, getdate()) as diff
 from Developer 
 where datediff (month, hired_date, getdate())
 between 1 and 12
 order by hired_date desc

 --query to find employees hired in last n day.
 select *, DATEDIFF (day, hired_date, getdate()) as diff
 from Developer
 where datediff (day, hired_date, getdate())
 between 1 and 30
 order by hired_date desc;
 
 