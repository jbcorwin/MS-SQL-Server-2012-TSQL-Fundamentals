-- Write a query against Sales.OrderDetails that returns the total value 
--- (quantity * unitprice) greater than 10,000 sorted by value.
-- Tables Involved: Sales.OrderDetails
-- Desired columns: orderid, totalvalue

USE TSQL2012;
GO

SELECT orderid, SUM(qty * unitprice) as 'totalvalue'
FROM Sales.OrderDetails
GROUP BY orderid
HAVING SUM(unitprice * qty) > 10000
ORDER BY totalvalue DESC