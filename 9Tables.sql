--Write a table of '9'Tables
DECLARE @table int  =9---how declare variable of int 
DECLARE @Count int =1---how declare variable of int 
WHILE @Count <= 10  ---While loop
BEGIN
print @table * @Count
SET @Count =@Count +1  ---Increment the @count value by 1
END