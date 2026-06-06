/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/

-- Analyse sales performance over time
-- Quick Date Functions
select * from gold.fact_sales


-- 1. Aggregate monthly sales metrics by breaking the date into separate integer columns for the year and month.
select year(order_date) as years, 
        month(order_date) as months,
        sum(sales_amount) total_sale,
        count(distinct customer_key) as total_cust,
        sum(quantity) as total_quant
from gold.fact_sales
group by year(order_date), 
        month(order_date)
order by total_sale ,MONTH(order_date);





-- 2. Aggregate monthly sales metrics by rounding all transaction dates down to the first day of their respective month.

select datetrunc(month,order_date) as new_date,
        SUM(sales_amount) AS total_sales,
        COUNT(DISTINCT customer_key) AS total_customers,
        SUM(quantity) AS total_quantity

from gold.fact_sales
where order_date is not null

group by datetrunc(month,order_date)
order by datetrunc(month,order_date);





-- 3. Aggregate monthly sales metrics while converting the date into a human-readable text string layout (yyyy-MMM).
select format(order_date,'yyyy-MMM') as new_date,
        SUM(sales_amount) AS total_sales,
        COUNT(DISTINCT customer_key) AS total_customers,
        SUM(quantity) AS total_quantity

from gold.fact_sales
where order_date is not null

group by format(order_date,'yyyy-MMM') 
order by format(order_date,'yyyy-MMM') ;

