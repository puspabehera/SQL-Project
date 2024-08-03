--create table customers
--(
--customer_id int primary key,
--name varchar(50)
--)
--insert into customers values (1,'sili'),
--                             (2,'puspa'),
--							 (3,'prabhat'),
--							 (4,'laxman'),
--							 (5,'bapi'),
--							 (6,'sunil'),
--							 (7,'kabita'),
--							 (8,'flower'),
--							 (9,'kiki'),
--							 (10,'kiara')

--create table orders
--(
--order_id int,
--address varchar (100),
--emailId varchar(50),
--customer_id int,
--Foreign key (customer_id) references customers(customer_id)
--)

--insert into orders values (101,'hyd','sili@gamil.com',1);
--insert into orders values (102,'hyd','puspa@gamil.com',2);
--insert into orders values (103,'chennai','prabhat@gamil.com',3);
--insert into orders values (104,'banglore','laxman@gamil.com',4);
--insert into orders values (105,'bhubneswar','bapi@gamil.com',5);

select * from customers;
select * from orders;
------------------------------
--coalesce function
select 
coalesce(cast(c.customer_id as varchar),'N/A') as customer_id,
coalesce(c.name , 'N/A') as name,
coalesce(o.address ,'N/A') as address,
coalesce(cast(o.customer_id AS varchar),'N/A') as customer_id
from customers as C
left join orders as O
on C.customer_id = O.customer_id;
-------------------------- 
--case statement
select 
CASE 
        WHEN c.customer_id IS NULL THEN 'N/A' 
        ELSE CAST(c.customer_id AS VARCHAR) 
    END AS customer_id,
CASE 
        WHEN c.name IS NULL THEN 'N/A' 
        ELSE c.name 
    END AS name,
    
    CASE 
        WHEN o.address IS NULL THEN 'N/A' 
        ELSE o.address 
    END AS address,
    
    CASE 
        WHEN o.customer_id IS NULL THEN 'N/A' 
        ELSE CAST(o.customer_id AS VARCHAR) 
    END AS order_customer_id
from customers as C
left join orders as O
on C.customer_id = O.customer_id;
