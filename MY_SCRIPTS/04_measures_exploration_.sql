/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/


-- 1. Find the Total Sales
print '1. Find the Total Sales';

select sum(sales_amount) Total_sales from [gold].[fact_sales];

print 'Task 1 completed';



-- 2. Find how many items are sold
print '2. Find how many items are sold';

select sum(quantity) Total_quantity from [gold].[fact_sales];

print 'Task 2 completed';



-- 3. Find the average selling price
print '3. Find the average selling price';

select avg(price) avg_price from [gold].[fact_sales];

print 'Task 3 completed';



-- 4. Find the Total number of Orders
print '4. Find the Total number of Orders';

select count(distinct order_number) as total_order from [gold].[fact_sales];

print 'Task 4 completed';




-- 5. Find the total number of products
print '5. Find the total number of products';

select count(product_id) as no_product from [gold].[dim_products];
print 'Task 5 completed';




-- 6. Find the total number of customers

print '6. Find the total number of customers';
select count(distinct customer_number) total_customer from [gold].[dim_customers];

print 'Task 6 completed';




-- 7. Find the total number of customers that has placed an order

print '7. Find the total number of customers that has placed an order';
select count(distinct customer_key) from [gold].[fact_sales];


print 'Task 7 completed';



-- 8. Generate a Report that shows all key metrics of the business

print '8. Generate a Report that shows all key metrics of the business';

select 'Total Sales' as masures, sum(sales_amount) Total_sales from [gold].[fact_sales]
union
select 'items are sold', sum(quantity) Total_quantity from [gold].[fact_sales]
union
select 'average selling price' ,avg(price) avg_price from [gold].[fact_sales]
union 
select 'Total number of Orders',count(distinct order_number) as total_order from [gold].[fact_sales]
union
select 'total number of products',count( product_id) as no_product from [gold].[dim_products]
union
select 'total number of customers', count( customer_number) total_customer from [gold].[dim_customers]
union
select 'total number of customers that has placed an order',count(distinct customer_key) from [gold].[fact_sales];

print 'Task 8 completed';