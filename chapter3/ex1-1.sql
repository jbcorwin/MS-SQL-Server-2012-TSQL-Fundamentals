-- Example 1-1
-- Write a query that generates 5 copies of each employee row.
-- Tables Involved: HR.Employees, dbo.Nums
-- Desired columns: empid, firstname, lastname, n

USE TSQL2012;
GO

SELECT HRe.empid, HRe.firstname, HRe.lastname, n.n
FROM HR.Employees as HRe
	CROSS JOIN dbo.Nums as n
WHERE n <= 5;