-- Example 7 (Optional, Advanced)
-- Write a query that returns all customers and for each return a
--- Yes/No value depending on whether the customer placed on order on Febuary 12th, 2007
-- Tables Involved: Sales.Customers, Sales.Orders
-- Desired columns: custid, companyname, orderid, orderdate

USE TSQL2012;
GO

SELECT Cust.custid, Cust.companyname, 
	HasOrderOn20070212 = 
		CASE SalesOrders.orderdate
			WHEN '20070212' THEN 'Yes'
			ELSE 'No'
		END
FROM Sales.Customers AS Cust
	LEFT JOIN Sales.Orders as SalesOrders
		ON Cust.custid = SalesOrders.custid
		AND SalesOrders.orderdate = '20070212';