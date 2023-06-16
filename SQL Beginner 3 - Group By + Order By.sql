/*
Group By, Order By
*/
SELECT *
FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC				-- Multiple ordering methods
ORDER BY 4 Desc, 5 Desc							-- Numbers stand for the column number, where the first one = 1

--SELECT Gender, COUNT(Gender) AS CountGender	-- Note: existing column name also need to be in the GROUP BY statement,
--FROM EmployeeDemographics						-- COUNT(Gender) doesn't because it is a newly created column
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC						-- ASC: small to big, DESC: big to small
												-- comment out multiple lines = 'select lines' and then press 'Ctrl + K', 'Ctrl + C'