USE Task1_Sales;
describe sales_dataset;

SELECT
    COUNT(*) AS total_orders,
    ROUND(AVG(Age), 1) AS avg_customer_age,
    MIN(Age) AS youngest_customer,
    MAX(Age) AS oldest_customer,
    ROUND(AVG(Quantity), 2) AS avg_quantity,
    ROUND(AVG(Unit_Price), 2) AS avg_unit_price,
    ROUND(SUM(Total_Sales), 2) AS total_revenue,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(MIN(Total_Sales), 2) AS min_order_value,
    ROUND(MAX(Total_Sales), 2) AS max_order_value
FROM cleaned_sales_dataset;
SELECT
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age < 35 THEN '25-34'
        WHEN Age < 45 THEN '35-44'
        WHEN Age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS customer_count
FROM cleaned_sales_dataset
GROUP BY age_group
ORDER BY age_group;

SELECT
    Sales_Category,
    COUNT(*) AS order_count,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Sales_Category
ORDER BY total_revenue DESC;

SELECT
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age < 35 THEN '25-34'
        WHEN Age < 45 THEN '35-44'
        WHEN Age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    Sales_Category,
    COUNT(*) AS orders
FROM cleaned_sales_dataset
GROUP BY age_group, Sales_Category
ORDER BY age_group, orders DESC;
-- que 5
SELECT
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age < 35 THEN '25-34'
        WHEN Age < 45 THEN '35-44'
        WHEN Age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS total_orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY age_group
ORDER BY avg_order_value DESC;
-- What does 18-24 actually buy?
SELECT
    Category,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_spent
FROM cleaned_sales_dataset
WHERE Age < 25
GROUP BY Category
ORDER BY avg_spent DESC;
-- Compare to 25-34 (our lowest spenders)
SELECT
    Category,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_spent
FROM cleaned_sales_dataset
WHERE Age BETWEEN 25 AND 34
GROUP BY Category
ORDER BY avg_spent DESC;
-- Confirm with quantity too (is it bulk buying or premium items?)
SELECT
    Category,
    ROUND(AVG(Quantity), 2) AS avg_quantity,
    ROUND(AVG(Unit_Price), 2) AS avg_unit_price
FROM cleaned_sales_dataset
WHERE Age < 25 AND Category = 'Fashion'
GROUP BY Category;
SELECT
    Category,
    ROUND(AVG(Quantity), 2) AS avg_quantity,
    ROUND(AVG(Unit_Price), 2) AS avg_unit_price
FROM cleaned_sales_dataset
WHERE Age BETWEEN 25 AND 34 AND Category = 'Fashion'
GROUP BY Category;
-- Quick basic check on Gender FIRST
SELECT
    Gender,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Gender;

-- City quick scan
SELECT
    City,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY City
ORDER BY total_revenue DESC;

-- Category quick scan
SELECT
    Category,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Category
ORDER BY total_revenue DESC;

-- Product quick scan
SELECT
    Product,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Product
ORDER BY total_revenue DESC;

SELECT
    Product,
    COUNT(*) AS orders,
    ROUND(AVG(Total_Sales), 2) AS avg_order_value,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
WHERE Category = 'Electronics'
GROUP BY Product
ORDER BY total_revenue DESC;


-- Q1. Top 5 Products by Revenue
SELECT
    Product,
    COUNT(*) AS orders,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Product
ORDER BY total_revenue DESC
LIMIT 5;

-- Q2. Monthly Sales Trend
SELECT
    Month_Name,
    COUNT(*) AS orders,
    ROUND(SUM(Total_Sales), 2) AS monthly_revenue
FROM cleaned_sales_dataset
GROUP BY Month_Name
ORDER BY monthly_revenue DESC;

-- Q3 Highest Average Order Value by City
SELECT
    City,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
    ROUND(AVG(Total_Sales), 2) AS Avg_Order_Value
FROM cleaned_sales_dataset
GROUP BY City
ORDER BY Total_Revenue DESC;

-- Q4 Age vs Spending
SELECT
    CASE
        WHEN Total_Sales < 50000 THEN 'Low'
        WHEN Total_Sales < 150000 THEN 'Medium'
        ELSE 'High'
    END AS Revenue_Tier,

    COUNT(*) AS Order_Count,

    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_sales_dataset),
        2
    ) AS Order_Percentage,

    ROUND(SUM(Total_Sales), 2) AS Total_Revenue,

    ROUND(
        SUM(Total_Sales) * 100.0 /
        (SELECT SUM(Total_Sales) FROM cleaned_sales_dataset),
        2
    ) AS Revenue_Percentage

FROM cleaned_sales_dataset
GROUP BY Revenue_Tier
ORDER BY Total_Revenue DESC;

-- Q5 Revenue Concentration
SELECT CASE
        WHEN Total_Sales < 50000 THEN 'Low'
        WHEN Total_Sales < 150000 THEN 'Medium'
        ELSE 'High'
    END AS Revenue_Tier,

    COUNT(*) AS Order_Count,

    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_sales_dataset), 2) AS Order_Percentage,
        ROUND(SUM(Total_Sales), 2) AS Total_Revenue,
        ROUND(SUM(Total_Sales) * 100.0 /(SELECT SUM(Total_Sales) FROM cleaned_sales_dataset),2) AS Revenue_Percentage

FROM cleaned_sales_dataset
GROUP BY Revenue_Tier
ORDER BY Total_Revenue DESC;

-- Joins
CREATE TABLE city_region (
    City VARCHAR(50),
    Region VARCHAR(50)
);
INSERT INTO city_region (City, Region) VALUES
('Mumbai', 'West'),
('Pune', 'West'),
('Bengaluru', 'South'),
('Hyderabad', 'South'),
('Delhi', 'North'),
('Patna', 'East'),
('Kolkata', 'East'),
('Gaya', 'East');
select*from city_region;

-- Q6. Regional Analysis (JOIN)
SELECT
    cr.Region,
    COUNT(*) AS total_orders,
    ROUND(SUM(cs.Total_Sales), 2) AS total_revenue,
    ROUND(AVG(cs.Total_Sales), 2) AS avg_order_value
FROM cleaned_sales_dataset cs
JOIN city_region cr ON cs.City = cr.City
GROUP BY cr.Region
ORDER BY total_revenue DESC;


-- next
SELECT
    City,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM cleaned_sales_dataset
GROUP BY City
ORDER BY Total_Revenue DESC;



SELECT
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age < 35 THEN '25-34'
        WHEN Age < 45 THEN '35-44'
        WHEN Age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS customer_count
FROM cleaned_sales_dataset
GROUP BY age_group
ORDER BY age_group;


SELECT Quantity, Total_Sales
FROM cleaned_sales_dataset
ORDER BY Quantity; 
SELECT Age, Total_Sales
FROM cleaned_sales_dataset
ORDER BY Age;

SELECT
    Sales_Category,
    COUNT(*) AS order_count,
    ROUND(SUM(Total_Sales), 2) AS total_revenue
FROM cleaned_sales_dataset
GROUP BY Sales_Category
ORDER BY total_revenue DESC;






SELECT
COUNT(*) AS total_orders,
AVG(Age),
SUM(Total_Sales)
FROM cleaned_sales_dataset;









