/*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/
-- select * from gold.fact_sales

-- 1. Calculate the total sales per year and the running total of sales over time 
select 
        new_date,
        normal_total,
        avg_total,
        sum(normal_total) over(order by new_date rows between unbounded preceding and current row) as running_total,
        sum(avg_total) over(order by new_date rows between unbounded preceding and current row) as running_avg_total

from 
    (select 
            datetrunc(year,order_date) new_date,
            sum(sales_amount) normal_total,
            avg(price) as avg_total
     from gold.fact_sales

     group by datetrunc(year,order_date)) tt
order by new_date