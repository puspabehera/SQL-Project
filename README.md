# SQL-Project
going to cover all l SQL topic in depth


Q.1 How to find nth highest salary

we can find nth highest salary using may way

a. using aggregate function
select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees)))