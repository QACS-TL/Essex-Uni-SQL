USE Northwind

-- Find PostalCodes where Postal Code IS NULL
-- One record HUNGO
SELECT CustomerID, CompanyName, Region, PostalCode 
FROM Customers
WHERE PostalCode IS NULL

-- COALESCE function
-- This function will return the first non-null value in the list
-- So in the example if PostalCode is NULL then it will goto the next value 'No postal code' and return it
SELECT CustomerID, CompanyName, Region, PostalCode, COALESCE(PostalCode, 'No postal code')
FROM Customers
WHERE PostalCode IS NULL

-- ISNULL function
-- The second parameter is substituted if the first parameter is null
-- Note that it is converted to the type of the first one
-- See result of this - The output is 'No postal' rather than 'No postal code'
SELECT CustomerID, CompanyName, Region, PostalCode, ISNULL(PostalCode, 'No postal code')
FROM Customers
WHERE PostalCode IS NULL


SELECT NULLIF('a', 'b')
SELECT NULLIF('a', 'a')

USE QAStore

SELECT fname, lname, sales_target/12 as monthly_target 
FROM dbo.salesperson

SELECT fname, lname, coalesce(sales_target/12, dept_no * emp_no, 0) as monthly_target 
FROM dbo.salesperson

