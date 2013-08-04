-- Example 5
-- Write a query that returns customers with orders placed
--- on Febuary 12th, 2007, along with thier orders
-- Tables Involved: Sales.Customers, Sales.Orders
-- Desired columns: custid, companyname, orderid, orderdate

USE TSQL2012;
GO

SELECT Cust.custid, Cust.companyname, SalesOrders.orderid, SalesOrders.orderdate
FROM Sales.Customers AS Cust
	JOIN Sales.Orders as SalesOrders
		ON Cust.custid = SalesOrders.custid
WHERE SalesOrders.orderdate = '20070212';