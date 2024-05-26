select * from IT_Employee

--nth highest salary 

--2nd highest salary , using CTE & Dense_rank

with result as 
(
select salary,
DENSE_RANK () over (order by salary desc) as denserank
from IT_Employee
)
select top 1 salary 
from result 
where denserank =2

--3rd nth salary, using top n clause
select top 1 salary from
(select distinct top 3 salary from IT_Employee order by salary desc) as result
order by salary asc

--4th nth salary , using subquery
select top 1 salary from IT_Employee
where salary in
(select distinct top 4 salary from IT_Employee order by salary desc)
order by salary asc

--2nd highest salary , using min() 

select min(salary)  from IT_Employee 
where salary in
(select distinct top 3 salary from  IT_Employee order by salary desc)


