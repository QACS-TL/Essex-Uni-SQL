-- SOME STRING FUNCTIONS
-- UPPER, LOWER, SUBSTRING, LEFT, RIGHT

USE Northwind

-- Returns CustomerID AROUT, Company Name 'Around The Horn'
SELECT CustomerID, CompanyName FROM Customers WHERE CustomerID='AROUT'

-- Returns 'AROUND THE HORN'
SELECT UPPER(CompanyName) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'around the horn'
SELECT LOWER(CompanyName) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'Aroun' - start position 1, for 5 characters
SELECT SUBSTRING(CompanyName, 1, 5) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'Ar' - first two characters
SELECT LEFT(CompanyName, 2) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'Horn' - last 4 characters
SELECT RIGHT(CompanyName, 4) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'Around' - start position 1, for all characters up to and including the first letter 'd'
SELECT SUBSTRING(CompanyName, 1, CharIndex('d', CompanyName, 1)) FROM Customers WHERE CustomerID='AROUT'

-- Returns 'Around' - start position 1, for all characters up to the occurence of the word 'the' (errors if pattern is not found)
SELECT SUBSTRING(CompanyName, 1, PatIndex('%the%', CompanyName) -1) FROM Customers WHERE CustomerID='AROUT'

