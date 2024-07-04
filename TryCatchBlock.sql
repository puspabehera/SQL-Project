IF OBJECT_ID('tempdb..#employee') IS NOT NULL
    DROP TABLE #employee;

-- Create the temporary table
CREATE TABLE #employee (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert 8 rows into the temporary table
INSERT INTO #employee (id, name, age, city, salary) VALUES
(1, 'John Doe', 28, 'New York', 60000.00),
(2, 'Jane Smith', 34, 'Los Angeles', 75000.00),
(3, 'Michael Johnson', 45, 'Chicago', 80000.00),
(4, 'Emily Davis', 29, 'Houston', 65000.00),
(5, 'David Wilson', 50, 'Phoenix', 90000.00),
(6, 'Sophia Martinez', 32, 'Philadelphia', 70000.00),
(7, 'Daniel Anderson', 38, 'San Antonio', 72000.00),
(8, 'Emma Thomas', 26, 'San Diego', 58000.00);

-- Select data to verify the insertion

go

Begin try
Begin Tran
   update #employee set age = 30 
   where id = 2;
   update #employee set age = 50 
   where id = 5;
   
commit tran
print 'Transaction commited'
end try 

Begin Catch
rollback Tran
print 'Transaction Rollback'
end Catch;

SELECT * FROM #employee;