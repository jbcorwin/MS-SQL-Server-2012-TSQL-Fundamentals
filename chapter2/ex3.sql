-- Write a query against HR.Employees that returns employees with last names
---	containing the letter a twice or more
-- Tables Involved: HR.Employees
-- Desired columns: empid, firstname, lastname

USE TSQL2012;
GO

SELECT empid, firstname, lastname
FROM HR.Employees
WHERE (LEN(lastname) - LEN(REPLACE(lastname, 'a', ''))) >= 2
ORDER BY empid;
GO