
--the relationship between the Lift & Lift_Passengers table is such that multiple passengers can attempt to enter the same Lift ,
--but the total weight of the passengers in a lift cannot exceeds the lift's capacity.

--your task is to write a SQL query that produces a comma-separated list of passengers who can be accommodated in each lift without 
--exceeding the lift's capacity. The passengers in the list should be ordered by their weight in increasing order.

--you can assume that the weight of the passengers are unique within each lift.

--create table Lift (
--Id int,
--Capacity_KG int
--)

--go

--insert into Lift values (1,300);
--insert into Lift values (2,350);  

--create table Lift_Passengers (
--Passenger_Name varchar (50),
--Weight_KG int,
--Lift_Id int
--)

--go

--insert into Lift_Passengers values ('Rahul', 85, 1);
--insert into Lift_Passengers values ('Adarsh', 73, 1);  
--insert into Lift_Passengers values ('Riti', 95, 1);
--insert into Lift_Passengers values ('Dheeraj', 80, 1);  
--insert into Lift_Passengers values ('Vimal' , 83, 2);
--insert into Lift_Passengers values ('Neha', 77, 2);  
--insert into Lift_Passengers values ('Priti', 73,2);
--insert into Lift_Passengers values ('Himanshi', 85,2); 

select * from Lift;
select * from Lift_Passengers;

with CTE as (
    select
        p.Lift_id,
        p.Passenger_name,
        p.Weight_KG,
        l.Capacity_KG,
        sum(p.Weight_KG) over(partition by p.Lift_id order by p.Weight_KG) as cum_sum
    from Lift l
    join Lift_Passengers p 
	on l.id = p.Lift_id
)
select Lift_id,
    string_agg(Passenger_name, ',') as passengers
from  CTE
where cum_sum <= Capacity_KG
group by Lift_id;

