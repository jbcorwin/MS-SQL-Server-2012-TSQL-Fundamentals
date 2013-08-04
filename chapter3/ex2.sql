-- Example 2 
-- Write a query that returns US customers and for each customer
---	returns the total number of orders and total quantities
-- Tables Involved: Sales.Customers, Sales.Orders, Sales.OrderDetails
-- Desired columns: custid, numorders, totalqty

USE TSQL2012;
GO

SELECT Cust.custid, COUNT(DISTINCT SalesOrders.orderid) as numorders, SUM(SaleOrderDetails.qty) as totalqty
FROM Sales.Customers AS Cust
	JOIN Sales.Orders as SalesOrders
		ON SalesOrders.custid = Cust.custid
	JOIN Sales.OrderDetails AS SaleOrderDetails
		ON SalesOrders.orderid = SaleOrderDetails.orderid
WHERE Cust.country = N'USA'
GROUP BY Cust.custid
ORDER BY custid;