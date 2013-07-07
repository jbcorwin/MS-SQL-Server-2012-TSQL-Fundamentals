-- Example 2
-- Write a query against Sales.Orders that returns 
---	all rows placed on the last day of the month.
-- Tables Involved: Sales.Orders
-- Desired columns: orderid, orderdate, custid, empid

USE TSQL2012;
GO

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate = EOMONTH(orderdate)
ORDER BY orderid, custid;
GO