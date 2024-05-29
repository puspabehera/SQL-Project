-- Create the Product table
--CREATE TABLE Product (
--    product_id INT PRIMARY KEY,
--    product_name VARCHAR(100),
--    price DECIMAL(10, 2)
--);
--go
-- Insert records into the Product table
--INSERT INTO Product (product_id, product_name, price) VALUES
--(1, 'Laptop', 999.99),
--(2, 'Smartphone', 699.99),
--(3, 'Tablet', 299.99),
--(4, 'Headphones', 89.99),
--(5, 'Smartwatch', 199.99);
--go
-- Create the Orders table
--CREATE TABLE Orders (
--    order_id INT PRIMARY KEY,
--    product_id INT,
--    quantity INT,
--    order_date DATE,
--    FOREIGN KEY (product_id) REFERENCES Product(product_id)
--);
--go
-- Insert records into the Orders table
--INSERT INTO Orders (order_id, product_id, quantity, order_date) VALUES
--(1, 1, 2, '2024-01-15'),  
--(2, 2, 1, '2024-02-20'),  
--(3, 3, 3, '2024-03-05'),
--(4, 4, 1, '2024-04-10'),
--(5, 5, 2, '2024-05-22'),
--(6, 1, 1, '2024-06-17'),  
--(7, 2, 4, '2024-07-29');  

select * from Product;
select * from Orders;

--INNER JOIN
SELECT P.product_id, P.product_name, P.price, O.order_id, O.quantity, O.order_date
FROM Product as P
INNER JOIN Orders as O
ON P.product_id = O.product_id;

--LEFT JOIN
SELECT P.product_id, P.product_name, P.price, O.order_id, O.quantity, O.order_date
FROM Product as P
LEFT JOIN Orders as O
ON P.product_id = O.product_id;

--RIGHT JOIN
SELECT P.product_id, P.product_name, P.price, O.order_id, O.quantity, O.order_date
FROM Product as P
RIGHT JOIN Orders as O
ON P.product_id = O.product_id;

--FULL OUTER JOIN
SELECT P.product_id, P.product_name, P.price, O.order_id, O.quantity, O.order_date
FROM Product as P
FULL OUTER JOIN Orders as O
ON P.product_id = O.product_id;
