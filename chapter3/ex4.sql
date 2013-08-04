-- Example 4
-- Write a query that returns customers who placed no orders
-- Tables Involved: Sales.Customers, Sales.Orders
-- Desired columns: custid, companyname

USE TSQL2012;
GO

SELECT Cust.custid, Cust.companyname
FROM Sales.Customers AS Cust
	LEFT OUTER JOIN Sales.Orders AS SalesOrders
		ON Cust.custid = SalesOrders.custid
WHERE SalesOrders.orderid IS NULL;