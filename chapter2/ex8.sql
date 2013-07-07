-- Example 8
-- Write a query against Sales.Customers the returns for each customer the
--- customer ID and region. Sort the rows in the output by region,
--- having NULL marks sorted last (after non-NULL values).
---- Note: NULL values are by default sorted first in T-SQL
-- Tables Involved: Sales.Customers
-- Desired columns: custid, region

USE TSQL2012;
GO

SELECT custid, region
FROM Sales.Customers
ORDER BY CASE 
			WHEN region IS NULL 
				THEN 1 
				ELSE 0 
			END, region;