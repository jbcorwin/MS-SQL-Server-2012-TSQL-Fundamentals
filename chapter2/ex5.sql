-- Example 5
-- Write a query against Sales.Orders that returns the three shipped-to with the
--- highest average freight in 2007
-- Tables Involved: Sales.Orders
-- Desired columns: shipcountry, avgfreight

USE TSQL2012;
GO

SELECT TOP 3 shipcountry, AVG(freight) as 'avgfreight'
FROM Sales.Orders
WHERE YEAR(orderdate) = 2007
GROUP BY shipcountry
ORDER BY avgfreight DESC;