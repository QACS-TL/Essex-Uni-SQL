-- Example queries for ROUND and CAST
USE QAStore

-- Pull out montly target
select lname, sales_target/12 as MonthlyTarget 
from salesperson order by MonthlyTarget desc

-- Round to 2 decimal places
select lname, 
sales_target/12, round(sales_target/12, 2) as MonthlyTarget 
from salesperson order by MonthlyTarget desc

-- Display just two decimal places
-- Cast to decimal(18,2) - 18 digit decimal number with
-- 2 digits after the decimal place 
select lname, sales_target/12,
round(sales_target/12,2),
cast(round(sales_target/12, 2) as decimal(18,2)), 
cast(sales_target/12 as decimal(18,2)) as MonthlyTarget 
from salesperson order by MonthlyTarget desc

select lname, 
sales_target/12,
cast(sales_target/12 as decimal(18,2)) as MonthlyTarget 
from salesperson order by MonthlyTarget desc
-- note using float or real will cause rounding errors with money

-- Casting to int
-- Note that no rounding done
select lname, sales_target/12,
cast(sales_target/12 as int) as MonthlyTarget 
from salesperson order by MonthlyTarget desc

-- Casting to int
-- With rounding done
select lname, sales_target/12,
cast(round(sales_target/12,0) as int) as MonthlyTarget 
from salesperson order by MonthlyTarget desc
