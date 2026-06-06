

/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare performance or metrics across dimensions or time periods.
    - To evaluate differences between categories.
    - Useful for A/B testing or regional comparisons.

SQL Functions Used:
    - SUM(), AVG(): Aggregates values for comparison.
    - Window Functions: SUM() OVER() for total calculations.
===============================================================================
*/



-- Which categories contribute the most to overall sales?
select 
            distinct dp.category,
            sum(fs.sales_amount) over() total,
            sum(fs.sales_amount) over(partition by dp.category) cat_tot,
          round(sum(cast(fs.sales_amount as float)) over(partition by dp.category)
                / sum(cast(fs.sales_amount as float)) over() * 100, 2 ) percentages
from gold.dim_products dp 
left join  gold.fact_sales fs
    on fs.product_key = dp.product_key

where dp.category is not null and fs.sales_amount is not null
order by percentages