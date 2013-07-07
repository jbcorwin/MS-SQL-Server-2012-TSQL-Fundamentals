-- Example 6
-- Write a query against Sales.Orders the calculates row numbers for orders based on
--- order date ordering (using the order ID as the tiebreaker) for each customer
--- separately.
-- Tables Involved: Sales.Orders
-- Desired columns: custid, orderdate, orderid, rownum

USE TSQL2012;
GO

SELECT custid, orderdate, orderid, 
	ROW_NUMBER() 
		OVER(PARTITION BY custid
			ORDER BY custid) as 'rownum'
FROM Sales.Orders
ORDER BY custid;