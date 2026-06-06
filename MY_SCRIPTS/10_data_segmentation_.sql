
/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.

SQL Functions Used:
    - CASE: Defines custom segmentation logic.
    - GROUP BY: Groups data into segments.
===============================================================================
*/



/*Segment products into cost ranges and 
count how many products fall into each segment*/ -- range 100, 100 to 500, 500 to 1000, 1000<
with cte as
(select 
        product_key,product_name,
        cost,
        case 
            when cost<100 then 'below 100'
            when cost <500 then 'between 100 to 500'
            when cost <1000 then 'between 500 to 1000'
            else 'above 1000'
        end as segments
from gold.dim_products)

select segments, count(product_name) as total_pro from cte
group by segments
order by total_pro;



/*Group customers into three segments based on their spending behavior:
	- VIP: Customers with at least 12 months of history and spending more than €5,000.
	- Regular: Customers with at least 12 months of history but spending €5,000 or less.
	- New: Customers with a lifespan less than 12 months.
And find the total number of customers by each group
*/


with vip_people as(
select distinct customer_key, 
        min(order_date) over(partition by customer_key) as min_time,
        max(order_date) over(partition by customer_key) as max_time,
        datediff(month,min(order_date) over(partition by customer_key),
        max(order_date) over(partition by customer_key)) as diffmonth,
        sum(sales_amount) over(partition by customer_key) as amount_spend,

        case 
        when datediff(month,min(order_date) over(partition by customer_key),
        max(order_date) over(partition by customer_key)) >=12 and 
        sum(sales_amount) over(partition by customer_key) > 5000  then 'VIP'

        when datediff(month,min(order_date) over(partition by customer_key),
        max(order_date) over(partition by customer_key)) >=12 and 
        sum(sales_amount) over(partition by customer_key) <= 5000  then 'Regular'

        else 'New'
        end as person_cat
        
from gold.fact_sales)

select person_cat, count(customer_key) total from vip_people
group by person_cat
order by total desc;
