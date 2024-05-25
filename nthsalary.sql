select * from IT_Employees

--nth highset salary
select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees)))



