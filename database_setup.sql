CREATE TABLE Sales_Data1 (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    State VARCHAR(50),
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);
INSERT INTO Sales_Data1 (OrderID, OrderDate, State, Sales, Profit)
VALUES 
(1, '2024-01-10', 'California', 500, 100),
(2, '2024-02-15', 'Texas', 700, -50),
(3, NULL, 'New York', 300, 60),     
(4, '2024-03-20', 'California', 450, 90),
(5, NULL, 'Florida', 200, 40),     
(6, '2024-05-12', 'Texas', 800, 160),
(7, '2024-06-18', 'New York', 550, 110),
(8, '2024-07-22', 'Illinois', 400, 80),
(9, NULL, 'California', 600, 120),
(10, '2024-09-05', 'Florida', 350, 70);
SELECT * FROM Sales_Data1;
SELECT OrderID ISNULL (OrderDate,'2024-01-01') AS Clean_Data,StateSales,Profit FROM Sales_Data1;
USE _project;
GO

INSERT INTO Sales_Data1 (OrderID, OrderDate, State, Sales, Profit)
VALUES 
(11, '2024-01-25', 'Florida', 600, 150),
(12, '2024-02-05', 'New York', 850, 85),  
(13, '2024-02-28', 'Illinois', 400, 120),
(14, '2024-03-10', 'Texas', 1200, -100), 
(15, NULL, 'California', 700, 210),      
(16, '2024-04-15', 'Florida', 300, 90),
(17, '2024-04-22', 'New York', 950, 190),
(18, '2024-05-08', 'Illinois', 500, 50),
(19, '2024-05-30', 'Texas', 650, 130),
(20, '2024-06-12', 'California', 1100, 330), 
(21, '2024-06-25', 'Florida', 450, 45),
(22, NULL, 'New York', 800, 160),        
(23, '2024-07-14', 'Illinois', 350, 70),
(24, '2024-08-05', 'Texas', 900, 180),
(25, '2024-08-20', 'California', 1500, 450),
(26, '2024-09-10', 'Florida', 550, 110),
(27, '2024-10-02', 'New York', 750, 150),
(28, '2024-10-25', 'Illinois', 600, 120),
(29, '2024-11-15', 'Texas', 1000, 50),   
(30, '2024-12-05', 'California', 2000, 600); 
