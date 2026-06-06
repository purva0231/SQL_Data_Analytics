/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- 1. Determine the first and last order date and the total duration in months
print '1. Determine the first and last order date and the total duration in months';

select 
    min(order_date) first_order,
    max(order_date) last_order , 
    datediff(month,min(order_date),max(order_date)) Duration 
from [gold].[fact_sales] 
group by customer_key 
order by Duration;

print 'Task 1 Completed' ;




-- 2. Find the youngest and oldest customer based on birthdate
print '2. Find the youngest and oldest customer based on birthdate';

WITH cte AS (
    SELECT customer_id, 
           CASE WHEN birthdate IS NOT NULL THEN DATEDIFF(year, birthdate, GETDATE())
                ELSE NULL
           END AS age
    FROM [gold].[dim_customers] 
) 
SELECT customer_id, age 
FROM cte
WHERE age = (SELECT DATEDIFF(year, MIN(birthdate), GETDATE()) FROM [gold].[dim_customers])
   OR age = (SELECT DATEDIFF(year, MAX(birthdate), GETDATE()) FROM [gold].[dim_customers]);

   print 'Task 1 Completed' ;
