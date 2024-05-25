IF OBJECT_ID('tempdb..#Customers') IS NOT NULL
    DROP TABLE #Customers;

IF OBJECT_ID('tempdb..#Orders') IS NOT NULL
    DROP TABLE #Orders;

-- Create the temporary table for Customers
CREATE TABLE #Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(50)
);

-- Insert data into the temporary table
INSERT INTO #Customers (CustomerID, CustomerName)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie'),
	(4,'puspa');

-- Create the temporary table for Orders
CREATE TABLE #Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderName NVARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES #Customers(CustomerID)
);

-- Insert data into the temporary table
INSERT INTO #Orders (OrderID, CustomerID, OrderName)
VALUES
    (1, 1, 'iPhone'),
    (2, 2, 'Headset'),
    (3, 3, 'Laptop'),
    (4, 1, 'Laptop'),
    (5, 1, 'Headset'),
    (6, 2, 'AC');

-- Retrieve data from the temporary tables
SELECT * FROM #Customers;
SELECT * FROM #Orders;

-- Query to find the number of orders placed by each customer
SELECT c.CustomerName, COUNT(o.OrderID) AS NumberOfOrders
FROM #Customers c
inner JOIN #Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;
