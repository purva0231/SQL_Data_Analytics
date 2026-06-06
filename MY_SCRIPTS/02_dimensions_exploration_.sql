/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/


-- 1. Retrieve a list of unique countries from which customers originate
    print '1. Retrieve a list of unique countries from which customers originate';

    select distinct country from [gold].[dim_customers];

    print 'Task 1 completed';




-- 2. Retrieve a list of unique categories, subcategories, and products
print '2. Retrieve a list of unique categories, subcategories, and products';

select distinct category, subcategory, product_name  from [gold].[dim_products] 
ORDER BY category, subcategory, product_name;

print 'Task 2 completed';