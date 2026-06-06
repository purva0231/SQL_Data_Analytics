/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/


select * from [gold].[dim_customers];
select * from [gold].[dim_products];
select * from [gold].[fact_sales];




-- Which 5 products Generating the Highest Revenue?
select 
    top 5
    fs.product_key,
    dp.product_name,
    sum(fs.price*fs.quantity) as revenue

from [gold].[fact_sales] fs
left join [gold].[dim_products] dp
on fs.product_key = dp.product_key

group by    fs.product_key,
            dp.product_name
order by revenue desc;



-- Complex but Flexibly Ranking Using Window Functions
select 
   top 5
    fs.product_key,
    dp.product_name,
    sum(fs.price*fs.quantity) as revenue,
    row_number() over( order by sum(fs.price*fs.quantity) desc)

from [gold].[fact_sales] fs
left join [gold].[dim_products] dp
on fs.product_key = dp.product_key

group by    fs.product_key,
            dp.product_name
order by revenue desc;



-- What are the 5 worst-performing products in terms of sales?

select 
   top 5
    fs.product_key,
    dp.product_name,
    sum(fs.price*fs.quantity) as revenue,
    row_number() over( order by sum(fs.price*fs.quantity) asc)

from [gold].[fact_sales] fs
left join [gold].[dim_products] dp
on fs.product_key = dp.product_key

group by    fs.product_key,
            dp.product_name
order by revenue asc;





-- Find the top 10 customers who have generated the highest revenue
select top 10
        fs.customer_key,
        dc.first_name,
        dc.last_name,
        sum(fs.price*fs.quantity) as total_revenue

from gold.fact_sales fs
left join gold.dim_customers  dc
on fs.customer_key = dc.customer_key

group by fs.customer_key,dc.first_name,dc.last_name
order by total_revenue desc;


-- The 3 customers with the fewest orders placed
select  top 3
        fs.customer_key,
        dc.first_name,
        dc.last_name,
        count(distinct fs.order_number) as total_order
from gold.fact_sales fs
left join gold.dim_customers  dc
on fs.customer_key = dc.customer_key

group by fs.customer_key,
        dc.first_name,
        dc.last_name

order by total_order 