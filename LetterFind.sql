
--Write a query to select the rows that have 'A' in any one of the columns(col1,col2,col3,col4,col5)
--https://www.interviewbit.com/sql-interview-questions/
use dbinterview
select * from tbl1;

--Solution1
select * from tbl1 where 'A' in (col1,col2,col3,col4,col5)

--Solution 2
SELECT * FROM tbl1 WHERE CONCAT(col1, col2, col3, col4, col5) LIKE '%A%';
--Select * from tbl1 where col1 || col2 || col3 || col4||col5 like '%A%' IN Oracle DB

--Solution3
select * from tbl1 where  col1='A' union all
select * from tbl1 where  col2='A' union all
select * from tbl1 where  col3='A' union all
select * from tbl1 where  col4='A' union all
select * from tbl1 where  col5='A' 

--SOLUTION4
select * from tbl1 where col1 ='A' or col2 ='A' or col3 ='A' or col4='A' or col5='A';