-- EXAMPLE QUERIES FOR DATE FUNCTIONS

USE Northwind

SELECT GETDATE() -- returns today's date
SELECT GETUTCDATE() -- returns today's (UTC) date

SELECT DATEADD(DAY, 25, GETDATE())
SELECT DATEADD(MONTH, 12, GETDATE())

SELECT DATEDIFF(DAY, '2000/01/01', GETDATE())
SELECT DATEDIFF(MONTH, '2000/01/01', GETDATE())
SELECT DATEDIFF(YEAR, '2000/01/01', GETDATE())

-- returns OrderID 10250, Order Date '1996-07-08', Required Date '1996-08-05'
SELECT OrderID, OrderDate, RequiredDate FROM Orders WHERE OrderID=10250

-- returns 1996
SELECT YEAR(OrderDate) FROM Orders WHERE OrderID=10250

-- returns 7 (i.e. July)
SELECT MONTH(OrderDate) FROM Orders WHERE OrderID=10250

-- returns 8 (i.e. Day 8 of month)
SELECT DAY(OrderDate) FROM Orders WHERE OrderID=10250

-- DATEPART - returns integer
SELECT DATEPART(Y, OrderDate) FROM Orders WHERE OrderID=10250 -- returns 190 (the day of the year)
SELECT DATEPART(YY, OrderDate) FROM Orders WHERE OrderID=10250 -- returns 1996 (the year)
SELECT DATEPART(M, OrderDate) FROM Orders WHERE OrderID=10250 -- returns 7 (as integer)
SELECT DATEPART(D, OrderDate) FROM Orders WHERE OrderID=10250 -- returns 8 (as integer)

-- DATENAME - returns string
SELECT DATENAME(M, OrderDate) FROM Orders WHERE OrderID=10250 -- returns July (as varchar)
SELECT DATENAME(YY, OrderDate) FROM Orders WHERE OrderID=10250 -- returns 1996 (as varchar)

SELECT LEFT(DATENAME(m, OrderDate), 3) FROM Orders WHERE OrderID=10250 -- returns Jul
SELECT RIGHT(DATENAME(yy, OrderDate), 2) FROM Orders WHERE OrderID=10250 -- returns 96

SELECT LEFT(DATENAME(m, OrderDate), 3) 
 + '-' + RIGHT(DATENAME(yy, OrderDate), 2) FROM Orders WHERE OrderID=10250 -- returns Jul-96

 SELECT GETDATE() -- returns today's date
 SELECT CAST(GETDATE() AS DATE) -- returns today's date without the time
 SELECT CONVERT(Date, GETDATE()) -- returns today's date without the time


-- See https://www.w3schools.com/sql/func_sqlserver_convert.asp for explanation of style codes
SELECT CONVERT(varchar(20), GETDATE(), 103) -- UK Date format
SELECT CONVERT(varchar(20), GETDATE(), 3) -- UK Date format
SELECT CONVERT(varchar(20), GETDATE(), 106) -- dd MON yy format

SELECT PARSE('Monday, 13 December 2010' AS datetime2 USING 'en-US') AS Result; 
SELECT TRY_PARSE('Monday, 13 December 2010' AS datetime2 USING 'en-US') AS Result; 






