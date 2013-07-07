-- Example 7
-- Using the HR.Employees table, figure out the SELECT statement that
--- returns for each employee the gender based on the title of courtesy.
--- For 'Ms.' and 'Mrs.' return 'Female'; for 'Mr.' return 'Male';
--- and in all other cases (ex 'Doctor') return 'Unknown'.
-- Tables Involved: HR.Employees
-- Desired columns: empid, firstname, lastname, titleofcourtesy, gender

USE TSQL2012;
GO

SELECT empid, firstname, lastname, titleofcourtesy, 
	CASE titleofcourtesy
		WHEN N'Ms.'		THEN N'Female'
		WHEN N'Mrs.'	THEN N'Female'
		WHEN N'Mr.'		THEN N'Male'
		ELSE 'Unknown'
	END AS gender
FROM HR.Employees;