# SQL-Project
going to cover all l SQL topic in depth


<h2>Q.1 How to find nth highest salary</h2> 

<p dir="auto">
we can find nth highest salary using may way 
1. using aggregate function

</p>

```
select max(salary) from IT_Employees 
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees
where Salary < (select max(salary) from IT_Employees 
))))
```

2.Triggers Execution Order in SQL Server :
```
CREATE TRIGGER tr_DatabaseScopeDDLTrigger
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
    Print 'Database Scope DDL Trigger'
END
GO

CREATE TRIGGER tr_ServerScopeDDLTrigger
ON ALL SERVER
FOR CREATE_TABLE
AS
BEGIN
    Print 'Server Scope DDL Trigger'
END
GO

CREATE TABLE Employee(ID INT, Name VARCHAR(100));

O/P:
  Server Scope DDL Trigger
  Database Scope DDL Trigger
```
