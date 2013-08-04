-- Example 1-2 (Optional, Advanced)
-- Write a query that returns a row for each employee
--- and a day in the range of June 12, 2009 through June 16th, 2009
-- Tables Involved: HR.Employees, dbo.Nums
-- Desired columns: empid, dt

USE TSQL2012;
GO

SELECT HRe.empid, DATEADD(day, N-1, '20090612') AS dt
FROM HR.Employees as HRe
	CROSS JOIN dbo.Nums as Nd
WHERE Nd.n <= DATEDIFF(day, '20090612', '20090616') + 1
ORDER BY empid, n;