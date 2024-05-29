Create Table Test_Table
(
 Id int identity primary key,
 Value varchar(50)
)

go

Insert into Test_Table values ('123')
Insert into Test_Table values ('ABC')
Insert into Test_Table values ('DEF')
Insert into Test_Table values ('348')
Insert into Test_Table values ('GHI')
Insert into Test_Table values ('980')
Insert into Test_Table values ('JKL')

go 

Select Value from Test_Table where ISNUMERIC (Value) = 1

