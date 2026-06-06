/*
===============================================================================
Performance Analysis (Year-over-Year, Month-over-Month)
===============================================================================
Purpose:
    - To measure the performance of products, customers, or regions over time.
    - For benchmarking and identifying high-performing entities.
    - To track yearly trends and growth.

SQL Functions Used:
    - LAG(): Accesses data from previous rows.
    - AVG() OVER(): Computes average values within partitions.
    - CASE: Defines conditional logic for trend analysis.
===============================================================================
*/

-- Analyze the yearly performance of products by comparing their sales 
-- to both the average sales performance of the product and the previous year's sales 



with yearly_sales as(
select 
    year(fs.order_date) years,
    fs.product_key,
    dp.product_name,
    sum(price) as total_sale
from  gold.fact_sales fs
left join gold.dim_products dp
on fs.product_key = dp.product_key
where order_date is not null
group by year(fs.order_date),
         fs.product_key,
         dp.product_name
)

select years,
        product_key,
        product_name,
        total_sale,
        avg(total_sale) over(partition by product_name) avg_total,
        CASE 
        WHEN total_sale - AVG(total_sale) OVER (PARTITION BY product_name) > 0 THEN 'Above Avg'
        WHEN total_sale - AVG(total_sale) OVER (PARTITION BY product_name) < 0 THEN 'Below Avg'
        ELSE 'Avg' 
    END AS avg_change,

    case
        when total_sale - lag(total_sale) over(partition by product_name order by years) > 0 then 'increasing'
        when total_sale - lag(total_sale) over(partition by product_name order by years) < 0 then 'decreasing'
        else 'same'
        end as last_year_compare

from yearly_sales
ORDER BY product_name, years;
