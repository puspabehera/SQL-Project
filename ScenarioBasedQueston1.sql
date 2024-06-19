--Emp_Details table has 4 columns EmpId,Gender,EmailId & DeptId.
--User has to write a SQL query to derive another column called 
--Email_List to display all EmailId concatenated with semicolon
--associated with a each DeptId as as shown below in output table.

IF OBJECT_ID('tempdb..#Emp_Details') IS NOT NULL
    DROP TABLE #Emp_Details;
	go
CREATE TABLE #Emp_Details (
   EmpId int,
   Gender varchar (10),
   EmailId varchar (50),
   DeptId int
);
go
INSERT INTO #Emp_Details (EmpId,Gender,EmailId,DeptId)
values (1001,'M','YYYY@gmail.com',104),
       (1002,'M','ZZZ@gmail.com',103),
	   (1003,'F','AAAAA@gmail.com',102),
	   (1004,'F','PP@gmail.com',104),
	   (1005,'M','CCCC@yahoo.com',101),
	   (1006,'M','DDDDD@gmail.com',100),
	   (1007,'F','E@gmail.com',102),
	   (1008,'M','M@gmail.com',102),
	   (1009,'F','SS@yahoo.com',100)

go
select * from #Emp_Details;

go

select DeptId, STRING_AGG(EmailId,',')WITHIN GROUP (Order by EmailId) Email_List
from #Emp_Details
Group by DeptId;





     
        
 