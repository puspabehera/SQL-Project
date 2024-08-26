# SQL-Project
going to cover all l SQL topic in depth


<h2>Q.1 How to find nth highest salary</h2>

<p dir="auto">
we can find nth highest salary using may way
a. using aggregate function

</p>
 
```
select max(salary) from IT_Employees 
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
))))
```
