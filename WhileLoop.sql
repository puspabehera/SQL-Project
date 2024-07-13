--declare @number int =  9
--declare @count int = 1

--while @count <=10 
--begin
--print @number * @count
--set @count = @count+1
--end



Declare @number int = 10;
Declare @count int = 1;

while @count <=10 
Begin
 Print cast( @number as varchar )+ ' * ' + cast( @count as varchar) + ' = ' +cast(@number * @count as varchar);
 set @count = @count +1
End