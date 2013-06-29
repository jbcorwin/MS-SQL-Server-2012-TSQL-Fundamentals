-- Write a query that returns orders place in June 2007.
-- Tables involved: Sales.Orders
-- Desired columns: orderid, orderdate, custid, empid

USE TSQL2012;
GO

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate BETWEEN CAST('20070601' AS DATETIME) AND CAST('20070630 23:59:59.998' AS DATETIME)
ORDER BY orderid, orderdate;
GO