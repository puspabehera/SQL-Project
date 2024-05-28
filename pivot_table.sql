--create table Countries
--(
--Country nvarchar (50),
--City nvarchar (50)
--)

--Insert into Countries values ('USA' , 'NEW YORK')
--Insert into Countries values ('USA' , 'Chicago')
--Insert into Countries values ('USA' , 'Portland')

--Insert into Countries values ('INDIA' , 'Hyderabad')
--Insert into Countries values ('INDIA' , 'Banglore')
--Insert into Countries values ('INDIA' , 'Chennai')

--Insert into Countries values ('UK' , 'London')
--Insert into Countries values ('UK' , 'Manchester')
--Insert into Countries values ('UK' , 'Bristol')

select * from Countries ;

--Using PIVOT Operator , we can transform ROWS to COLUMNS

select Country, city1, city2, city3 from
(
Select Country, city,
 'city' + cast(ROW_NUMBER () over (partition by Country order by Country) as varchar(20)) as columnlist
 from Countries
) temp
PIVOT
(
max (city)
for columnlist in (city1, city2, city3)
) PIV

-- adding a new city name

--Insert into Countries values ('India', 'Noida')

select Country, city1, city2, city3, city4 from
(
Select Country, city,
 'city' + cast(ROW_NUMBER () over (partition by Country order by Country) as varchar(20)) as columnlist
 from Countries
) temp
PIVOT
(
max (city)
for columnlist in (city1, city2, city3, city4)
) PIV
