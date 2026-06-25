# Task 2: Exploratory Data Analysis & Business Intelligence

> 📋 Objective
To uncover patterns, trends, and relationships within sales 
data through SQL-based analysis, and develop proficiency in 
data extraction and basic dashboarding.

> 📊 Dataset Overview
- **Source:** Sales transactions dataset (cleaned in Task 1)
- **Records:** 980 orders
- **Columns:** Order_ID, Order_Date, Customer_ID, Customer_Name, 
  Age, Gender, City, Product, Category, Quantity, Unit_Price, 
  Total_Sales, Month_Name, Day_Name, Sales_Category

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `task2_eda_analysis.sql` | All SQL queries used for analysis, organized by section |
| `EDA_Report.md` | Full written report with insights and recommendations |
| `task2_dashboard_mockup.pptx` | Static dashboard mock-up (PowerPoint) |
| `task2_dashboard_mockup.pdf` | Dashboard mock-up (PDF version) |
| `charts/` | All visualization exports (PNG) |

## 🔍 Key Findings

1. **Electronics dominates revenue** — accounts for 36.5% of 
   total revenue, nearly double any other category, and shows 
   consistent strength across ALL cities.

2. **18-24 age group shows premium buying behavior** — despite 
   having the smallest customer base, this segment has the 
   HIGHEST average order value (₹1,44,391), driven by 43.6% 
   higher unit pricing in the Fashion category specifically 
   (not bulk buying).

3. **Strong revenue concentration (Pareto pattern)** — High-tier 
   orders represent only 36.5% of order volume but generate 
   69.3% of total revenue.

4. **Bengaluru is a premium market** — highest average order 
   value (₹1,54,968) despite having fewer orders than Mumbai 
   or Kolkata, indicating a "fewer but bigger" spending pattern.

5. **Age has no linear correlation with spending** (R² ≈ 0) — 
   spending is driven by category-specific preferences rather 
   than a simple "older = bigger spender" trend.

6. **Gender is not a differentiating factor** — Male and Female 
   customers show nearly identical average order values 
   (within 3.3% difference).

## 📈 Proposed KPIs for Ongoing Tracking

1. Total Revenue
2. Average Order Value
3. Revenue Concentration (% from High-tier orders)
4. Category Revenue Share (Electronics %)
5. City-wise Average Order Value
6. Age-Category Affinity Patterns

## 🛠️ Tools Used
- **MySQL Workbench** — SQL querying, JOINs, aggregations
- **Excel** — PivotTables, Conditional Formatting (heatmaps), 
  Charts (bar, combo, histogram, scatter)
- **PowerPoint** — Dashboard mock-up design

## 👤 Author
Kasturi | Data Analytics Internship — Task 2

## 🔗 Related
- [Task 1: Data Cleaning](../Task1_DataCleaning/) — 
  data preparation work this analysis builds on
