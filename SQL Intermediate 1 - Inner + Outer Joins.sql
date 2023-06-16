/*
Inner Joins, Full/Left/Right/ Outer Joins
*/

SELECT *
  FROM [SQL_Tutorial].[dbo].[EmployeeDemographics]

SELECT *
  FROM [SQL_Tutorial].[dbo].[EmployeeSalary]

--SELECT *
--FROM SQL_Tutorial.dbo.EmployeeDemographics
--Inner JOin SQL_Tutorial.dbo.EmployeeSalary								-- Inner Join: only shows the records which are the same in both table
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQL_Tutorial.dbo.EmployeeDemographics
--Full Outer Join SQL_Tutorial.dbo.EmployeeSalary							-- Full Outer Join: creates a new row for every record that can't be matched 
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQL_Tutorial.dbo.EmployeeDemographics
--Right Outer Join SQL_Tutorial.dbo.EmployeeSalary							-- Left Outer Join: join everything on the left table (first selected table)
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID			-- Right Outer Join: opposite from above

--SELECT EmployeeDemographics.EmployeeID, FirstName, Lastname, JobTitle, Salary		-- gives error because you need to select a table for EmployeeID to join on, 
--FROM SQL_Tutorial.dbo.EmployeeDemographics										-- specify table in SELECT: EmployeeDemographics.EmployeeID
--Left Outer Join SQL_Tutorial.dbo.EmployeeSalary								
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary		-- select all employees (except Michael), without any Null values (due: inner join)
--FROM SQL_Tutorial.dbo.EmployeeDemographics
--Inner Join SQL_Tutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Michael'
--ORDER BY Salary DESC

SELECT JobTitle, AVG(Salary)												-- look for average salary of all salesman, without any Null values (due: inner join)
FROM SQL_Tutorial.dbo.EmployeeDemographics
Inner Join SQL_Tutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle