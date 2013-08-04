-- Example 3
-- Write a query that returns customers and 
--- their orders including customers who placed no orders
-- Tables Involved: Sales.Customers, Sales.Orders
-- Desired columns: custid, companyname, orderid, orderdate

USE TSQL2012;
GO

SELECT Cust.custid, Cust.companyname, SalesOrders.orderid, SalesOrders.orderdate
FROM Sales.Customers AS Cust
	LEFT OUTER JOIN Sales.Orders AS SalesOrders
		ON Cust.custid = SalesOrders.custid;