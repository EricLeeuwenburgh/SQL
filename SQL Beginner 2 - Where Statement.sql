/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemographics

--WHERE FirstName = 'Jim'		-- = = equals
--WHERE FirstName <> 'Jim'		-- <> = not equal
--WHERE Age >= 30				-- >= = greater than and equal
--WHERE Age <= 32 AND Gender = 'Male'
--WHERE Age <= 32 OR Gender = 'Male'

--WHERE LastName LIKE 'S%'			-- % is a wildcard: S% = all LastName that start with 'S'
--WHERE LastName LIKE '%S%'			-- % is a wildcard: %S% = all LastName contain an 'S'
--WHERE LastName LIKE '%S%ott%'		-- % is a wildcard: S% = all LastName that start with 'S'

--WHERE FirstName is NULL
--WHERE FirstName is NOT NULL

WHERE FirstName IN ('Jim', 'Michael')	-- IN is like = but for multiple items