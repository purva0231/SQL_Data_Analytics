/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/


-- 1. Retrieve a list of all tables in the database
print '1. Retrieve a list of all tables in the database';
SELECT * FROM INFORMATION_SCHEMA.TABLES;
print 'Completed task 1 ';

-- 2. Retrieve all columns for a specific table (dim_customers)
print '2. Retrieve all columns for a specific table (dim_customers)';
select * from INFORMATION_SCHEMA.TABLES
where TABLE_NAME = 'dim_customers';
print 'Completed task 2';

