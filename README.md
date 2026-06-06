# Advanced SQL Sales Analytics Project

## 📌 Project Overview

This project demonstrates a complete end-to-end sales analytics workflow using **T-SQL**. The objective is to explore a sales data warehouse, generate business KPIs, analyze customer and product performance, perform time-series analysis and apply advanced SQL techniques such as **CTEs**, **Window Functions**, **Ranking Functions**, and **Customer Segmentation**.

The project follows a real-world analytical process used by Data Analysts, Business Intelligence Analysts and Analytics Engineers to transform raw transactional data into actionable business insights.

---

## 🎯 Project Objectives

- Explore and understand the database schema.
- Profile customer and product data.
- Develop core business KPIs.
- Analyze customer demographics and purchasing behavior.
- Evaluate product and category performance.
- Perform monthly and yearly trend analysis.
- Apply advanced SQL analytical techniques.
- Generate business-focused insights from sales data.

---

## 🗂️ Database Structure

### Fact Table
- `fact_sales`

### Dimension Tables
- `dim_customers`
- `dim_products`


---

# 📊 Analysis Performed

## 1️⃣ Database Exploration

- Retrieved all tables in the database.
- Examined table structures and column data.
- Validated relationships between fact and dimension tables.

### Skills Demonstrated
- Data Exploration
- Database Profiling

---

## 2️⃣ Data Profiling

Analyzed:

- Unique customer countries
- Product categories
- Product subcategories
- Product catalog structure

### Skills Demonstrated
- Data Discovery
- Dimension Analysis

---

## 3️⃣ Date Analysis

Determined:

- First order date
- Last order date
- Business activity duration
- Youngest customer
- Oldest customer

### Skills Demonstrated
- Date Functions
- DATEDIFF()
- MIN()
- MAX()

---

## 4️⃣ Business KPI Development

Calculated:

- Total Revenue
- Total Quantity Sold
- Average Selling Price
- Total Orders
- Total Products
- Total Customers
- Active Customers

### Skills Demonstrated
- Aggregate Functions
- COUNT DISTINCT
- KPI Engineering

---

## 5️⃣ Customer Analytics

Analyzed:

- Customers by country
- Customers by gender
- Revenue generated per customer
- Customer purchase activity

### Skills Demonstrated
- Customer Segmentation
- Revenue Analysis
- Business Reporting

---

## 6️⃣ Product Analytics

Analyzed:

- Products by category
- Average product cost
- Revenue by category
- Revenue contribution by products

### Skills Demonstrated
- Product Performance Analysis
- Category Analysis
- Revenue Attribution

---

## 7️⃣ Ranking & Performance Analysis

Identified:

- Top 5 revenue-generating products
- Bottom 5 performing products
- Top 10 customers by revenue
- Customers with the fewest orders

### SQL Functions Used

- ROW_NUMBER()
- RANK()
- DENSE_RANK()

### Skills Demonstrated

- Ranking Analysis
- Performance Benchmarking
- Business Prioritization

---

## 8️⃣ Time-Series Analysis

Generated:

### Monthly Sales Reports

- Year & Month format
- Month Start Date format
- Human-readable Month-Year format

### Skills Demonstrated

- Trend Analysis
- Time-Series Reporting
- Date Transformations

---

## 9️⃣ Running Totals & Trend Analysis

Calculated:

- Annual Revenue
- Running Total Revenue

### Skills Demonstrated

- Window Functions
- Cumulative Analysis
- Business Growth Tracking

---

## 🔟 Year-over-Year Product Performance Analysis

Compared product performance against:

- Previous year's sales
- Average product sales performance

### SQL Functions Used

- LAG()
- AVG() OVER()

### Skills Demonstrated

- YoY Analysis
- Historical Comparisons
- Performance Evaluation

---

## 1️⃣1️⃣ Product Segmentation

Segmented products into cost ranges:

- Low Cost
- Medium Cost
- High Cost

### Skills Demonstrated

- CASE Statements
- Product Classification
- Pricing Analysis

---

## 1️⃣2️⃣ Customer Segmentation

Customers were grouped into:

### VIP

- Customer lifespan ≥ 12 months
- Spending > €5,000

### Regular

- Customer lifespan ≥ 12 months
- Spending ≤ €5,000

### New

- Customer lifespan < 12 months

### Skills Demonstrated

- Behavioral Segmentation
- Customer Lifetime Analysis
- Business Classification Logic

---

## 1️⃣3️⃣ Revenue Contribution Analysis

Calculated:

- Revenue by category
- Percentage contribution to total revenue

### Skills Demonstrated

- Contribution Analysis
- Revenue Distribution
- Category Performance Evaluation

---

## 1️⃣4️⃣ Advanced Business Metrics

### Average Order Value (AOV)

Measures the average revenue generated per order.

### Average Monthly Spend

Measures average customer spending behavior over time.

### Skills Demonstrated

- Business KPI Design
- Customer Spending Analysis
- Revenue Optimization Metrics

---

# 🧠 SQL Concepts Demonstrated

## Beginner

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- TOP

## Intermediate

- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- CASE Statements
- Date Functions

## Advanced

- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- Running Totals
- Customer Segmentation
- Product Segmentation
- Contribution Analysis
- Time-Series Analytics

---

# 💼 Business Questions Answered

- Which products generate the highest revenue?
- Which products underperform and require attention?
- Who are the most valuable customers?
- Which customers place the fewest orders?
- Which categories contribute the most to overall sales?
- How do sales trends change over time?
- What is the Average Order Value (AOV)?
- How does product performance compare year-over-year?
- Which customer segments drive the most revenue?

---

# 🛠️ Technologies Used

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)

---

# 🚀 Key Outcomes

- Developed end-to-end analytical SQL solutions.
- Built business-focused KPI reporting.
- Performed customer and product performance analysis.
- Applied advanced window functions for trend and ranking analysis.
- Implemented customer and product segmentation models.
- Generated actionable business insights from transactional sales data.

---

# 📚 Skills Demonstrated

- SQL Query Optimization
- Data Exploration
- Data Profiling
- Business Intelligence Analytics
- KPI Development
- Revenue Analysis
- Customer Analytics
- Product Analytics
- Time-Series Analysis
- Window Functions
- Segmentation Analysis
- Performance Benchmarking
- Data Warehousing Concepts

---

## 👨‍💻 About Me

Hi, I'm **Purva Kalambate**, an aspiring **Data Analyst** passionate about transforming raw data into actionable business insights.

I enjoy working with SQL, data analytics, business intelligence, and data visualization to solve real-world business problems. Through hands-on projects, I continuously strengthen my skills in data exploration, KPI development, customer analytics, product performance analysis, and advanced SQL techniques.

### Skills

- SQL (T-SQL, PostgreSQL, MySQL)
- Data Analysis
- Business Intelligence
- Data Cleaning & Transformation
- Data Visualization
- Dashboard Development
- Statistical Analysis
- Problem Solving
