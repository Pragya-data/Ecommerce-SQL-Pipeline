USE Retention_Project;
GO

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers ( CustomerID INT PRIMARY KEY,  CustomerName VARCHAR(50), SignupDate DATE);

CREATE TABLE Orders (OrderID INT PRIMARY KEY, CustomerID INT, OrderDate DATE, ItemBought VARCHAR(100), Revenue DECIMAL(10,2));
INSERT INTO Customers VALUES 
(101, 'Aarav', '2026-01-10'), 
(102, 'Priya', '2026-01-15'), 
(103, 'Rahul', '2026-02-05'), 
(104, 'Neha', '2026-02-20');

INSERT INTO Orders VALUES 
(1, 101, '2026-01-10', 'Geometric Ceramic Planter', 45.00), 
(2, 102, '2026-01-15', 'Macrame Hanging Planter', 25.00), 
(3, 101, '2026-02-12', 'Indoor Potting Soil Mix', 15.00), 
(4, 103, '2026-02-05', 'Terracotta Pot Set', 35.00), 
(5, 104, '2026-02-20', 'Brass Watering Can', 40.00), 
(6, 101, '2026-03-05', 'Monstera Plant', 55.00), 
(7, 102, '2026-03-10', 'Plant Food Fertilizer', 12.00);

SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS TotalOrders, SUM(Orders.Revenue) AS TotalLifetimeValue
FROM Customers
INNER JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
Customers.CustomerName
ORDER BY TotalLifetimeValue DESC;

WITH CustomerOrderCounts AS ( SELECT  CustomerID, COUNT(OrderID) AS TotalOrders FROM Orders GROUP BY CustomerID)
SELECT  COUNT(CustomerID) AS TotalCustomers,
COUNT(CASE WHEN TotalOrders > 1 THEN 1 END) AS RetainedCustomers,
CAST(COUNT(CASE WHEN TotalOrders > 1 THEN 1 END) * 100.0 / COUNT(CustomerID) AS DECIMAL(5,2)) AS RetentionRatePercentage
FROM CustomerOrderCounts;
