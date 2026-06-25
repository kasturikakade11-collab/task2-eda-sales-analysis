# Exploratory Data Analysis Report
## Sales Dataset — 980 Orders (Jan 2025 – Jan 2026)

---

## 1. Descriptive Statistics & Univariate Analysis

### 1.1 Overall Summary Statistics

| Metric | Value |
|--------|-------|
| Total Orders | 980 |
| Average Customer Age | 41.4 years (range: 18–65) |
| Average Quantity per Order | 5.40 units |
| Average Unit Price | ₹25,550.42 |
| Total Revenue | ₹13,59,10,843.18 |
| Average Order Value | ₹1,38,684.53 |
| Minimum Order Value | ₹437.34 |
| Maximum Order Value | ₹4,93,677.50 |

**Insight:** The wide gap between minimum and maximum order 
values (over 1000x difference) signals significant variation 
in purchase behavior, motivating deeper category-level investigation.


**Distribution Shape:** The histogram of Total_Sales shows a 
right-skewed distribution — most orders cluster between ₹437 
and ₹1,50,000, with a long tail extending to ₹4,93,677. This 
visually confirms the revenue concentration pattern detailed 
in Section 1.3.

---

### 1.2 Age Group Distribution

| Age Group | Customer Count | % of Total |
|-----------|-----------------|------------|
| 18-24 | 147 | 15.0% |
| 25-34 | 210 | 21.4% |
| 35-44 | 205 | 20.9% |
| 45-54 | 195 | 19.9% |
| 55+ | 223 | 22.8% |


**Insight:** Customer base is fairly balanced across age groups, 
with 55+ marginally the largest segment — contrary to what the 
average age (41.4) alone might suggest.

#### Deep Dive: Average Order Value by Age Group

| Age Group | Orders | Avg Order Value |
|-----------|--------|-------------------|
| 18-24 | 147 | ₹1,44,391.05 |
| 35-44 | 205 | ₹1,42,985.94 |
| 45-54 | 195 | ₹1,40,123.52 |
| 55+ | 223 | ₹1,36,925.06 |
| 25-34 | 210 | ₹1,31,023.18 |

**Key Finding:** 18-24, despite being the SMALLEST customer 
segment, shows the HIGHEST average order value. Investigation 
revealed this is driven by premium Fashion purchases:

| Metric | 18-24 | 25-34 |
|--------|-------|-------|
| Fashion avg quantity | 5.00 | 4.72 |
| Fashion avg unit price | ₹34,430.18 | ₹23,976.85 |

**Conclusion:** The 43.6% higher unit price (not quantity) 
proves 18-24 customers exhibit premium/brand-conscious buying 
behavior in Fashion specifically, not bulk purchasing.

**Recommendation:** Target 18-24 with premium Fashion marketing 
campaigns; develop upselling strategies for the underperforming 
25-34 segment.

---

### 1.3 Sales Category Distribution (Pareto Pattern)

| Sales Category | Order Count | % of Orders | Total Revenue | % of Revenue |
|-----------------|-------------|--------------|-----------------|---------------|
| High | 358 | 36.5% | ₹94,241,452.51 | 69.3% |
| Medium | 354 | 36.1% | ₹34,957,834.19 | 25.7% |
| Low | 268 | 27.3% | ₹6,711,556.48 | 4.9% |

**Insight:** A classic Pareto pattern — just 36.5% of orders 
generate 69.3% of total revenue.

**Recommendation:** Prioritize retention programs for High-tier 
customers; losing this segment poses disproportionate revenue 
risk compared to Low-tier customer churn.

---

### 1.4 Gender Analysis

| Gender | Orders | Avg Order Value | Total Revenue |
|--------|--------|-------------------|------------------|
| Male | 500 | ₹1,40,905.82 | ₹7,04,52,909.33 |
| Female | 480 | ₹1,36,370.70 | ₹6,54,57,933.85 |

**Insight:** Minimal variation (3.3% difference) — Gender is 
NOT a significant driver of purchase behavior in this dataset.

**Recommendation:** Avoid gender-specific marketing spend; 
prioritize stronger differentiators like age and category.

---

### 1.5 Category & Product Analysis

| Category | Orders | Avg Order Value | Total Revenue | % Revenue |
|-----------|--------|-------------------|------------------|-----------|
| Electronics | 346 | ₹1,43,495.07 | ₹4,96,49,292.96 | 36.5% |
| Education | 176 | ₹1,39,280.74 | ₹2,45,13,410.94 | 18.0% |
| Grocery | 148 | ₹1,44,264.57 | ₹2,13,51,156.12 | 15.7% |
| Furniture | 154 | ₹1,33,513.55 | ₹2,05,61,087.37 | 15.1% |
| Fashion | 156 | ₹1,27,153.18 | ₹1,98,35,895.79 | 14.6% |


**Insight:** Electronics is nearly DOUBLE the revenue share of 
any other category. Four of five categories map 1:1 to a 
single product (Education–Book, Grocery–Rice, Furniture–Chair, 
Fashion–Shoes), while Electronics splits between two products:

| Product | Orders | Avg Order Value | Total Revenue |
|---------|--------|-------------------|------------------|
| Mobile | 181 | ₹1,38,478.34 | ₹2,50,64,579.02 |
| Laptop | 165 | ₹1,48,998.27 | ₹2,45,84,713.94 |

**Insight:** Mobile and Laptop contribute almost equally to 
Electronics revenue through different mechanisms — Mobile 
drives volume, Laptop drives value per order.

---

### 1.6 City Analysis

| City | Orders | Avg Order Value | Total Revenue |
|------|--------|-------------------|------------------|
| Bengaluru | 121 | ₹1,54,968.37 | ₹1,87,51,173.20 |
| Mumbai | 130 | ₹1,43,467.50 | ₹1,86,50,775.20 |
| Patna | 140 | ₹1,38,868.00 | ₹1,94,41,520.28 |
| Kolkata | 130 | ₹1,40,978.82 | ₹1,83,27,246.57 |
| Hyderabad | 124 | ₹1,37,806.11 | ₹1,70,87,958.01 |
| Delhi | 123 | ₹1,29,531.38 | ₹1,59,32,359.80 |
| Gaya | 117 | ₹1,22,913.33 | ₹1,43,80,859.39 |
| Pune | 95 | ₹1,40,410.01 | ₹1,33,38,950.73 |



**Insight:** Patna leads in total revenue through volume (140 
orders), while Bengaluru leads in average order value despite 
fewer orders (121) — confirming a "fewer but bigger" premium 
spending pattern, similar to the 18-24 age group finding.

**Recommendation:** Pilot premium product launches in Bengaluru; 
focus volume-driven promotions in Patna/Mumbai.

---

## 2. SQL for Business Questions

### Q1: What are the top 5 products by revenue?
**Result:** Mobile (₹2.51Cr), Laptop (₹2.46Cr), Book (₹2.45Cr), 
Rice (₹2.14Cr), Chair (₹2.06Cr)
**Insight:** Top 3 products cluster tightly despite different 
order volumes — Book outperforms expectations for a typically 
lower-priced category.
**Recommendation:** Create cross-category bundles (e.g., 
Laptop + Book combos).

### Q2: What is the monthly sales trend?
| Month | Orders | Revenue |
|-------|--------|---------|
| March | 88 | ₹1,28,52,352.24 |
| December | 97 | ₹1,21,61,096.33 |
| September | 77 | ₹89,98,578.57 |

**Insight:** March peaks in revenue; December peaks in order 
count but lower average value (likely festive bulk/discount 
buying); September is consistently weakest.
**Recommendation:** Launch a September promotional campaign; 
prepare inventory ahead of March's natural peak.

### Q3: Which city generates the highest average order value?
**Result:** Bengaluru (₹1,54,968), Mumbai (₹1,43,467), 
Kolkata (₹1,40,978)
**Insight:** Bengaluru shows premium buying behavior despite 
fewer total orders.
**Recommendation:** Test premium product launches in Bengaluru first.

### Q4: Does customer age affect spending behavior?
*(See Section 1.2 for full analysis)*
**Result:** 18-24 has highest avg order value (₹1,44,391), 
driven by premium Fashion pricing, not bulk buying.
**Recommendation:** Target 18-24 with premium Fashion campaigns; 
build upselling strategy for 25-34.

### Q5: How concentrated is revenue across order value tiers?
*(See Section 1.3)*
**Result:** High tier = 36.5% of orders, 69.3% of revenue.
**Recommendation:** Prioritize High-tier customer retention.

### Q6: What is the gender-wise revenue contribution?
*(See Section 1.4)*
**Result:** Balanced — only 3.3% difference between genders.
**Recommendation:** No gender-specific strategy needed.

### Q7: What drives Electronics' category dominance?
*(See Section 1.5)*
**Result:** Mobile (volume driver) + Laptop (value driver) 
contribute almost equally.
**Recommendation:** Maintain dual inventory focus on both products.

### Q8: How does revenue vary by region? (JOIN-based analysis)

```sql
CREATE TABLE city_region (City VARCHAR(50), Region VARCHAR(50));

INSERT INTO city_region VALUES
('Mumbai','West'), ('Pune','West'), ('Bengaluru','South'),
('Hyderabad','South'), ('Delhi','North'), ('Patna','East'),
('Kolkata','East'), ('Gaya','East');

SELECT cr.Region, COUNT(*) AS total_orders,
    ROUND(SUM(cs.Total_Sales),2) AS total_revenue,
    ROUND(AVG(cs.Total_Sales),2) AS avg_order_value
FROM cleaned_sales_dataset cs
JOIN city_region cr ON cs.City = cr.City
GROUP BY cr.Region
ORDER BY total_revenue DESC;
```

| Region | Orders | Total Revenue | Avg Order Value |
|--------|--------|------------------|--------------------|
| East | 387 | ₹5,21,49,626.24 | ₹1,34,753.56 |
| South | 245 | ₹3,58,39,131.21 | ₹1,46,282.17 |
| West | 225 | ₹3,19,89,725.93 | ₹1,42,176.50 |
| North | 123 | ₹1,59,32,359.80 | ₹1,29,531.38 |

**Insight:** East leads in total revenue through volume (3 
cities), while South shows the highest average order value — 
consistent with Bengaluru's premium pattern. North 
underperforms on both metrics.
**Recommendation:** Investigate North region's lower performance; 
extend South's premium strategy to other regions.

---

## 3. Multivariate Analysis & Correlation

### 3.1 City × Category Revenue Heatmap


**Insight:** Electronics shows green (strong) coloring across 
EVERY city — a universally consistent performer. Kolkata-
Electronics (₹76.8L) and Mumbai-Electronics (₹75.0L) are the 
two strongest city-category combinations. In contrast, Fashion 
shows high variability by city (strong in Bengaluru/Pune, weak 
in Delhi at ₹19.8L), suggesting Fashion demand is city-specific 
rather than universal. The weakest combination overall is 
Pune-Furniture (₹14.2L).

**Recommendation:** Push Electronics aggressively in any city; 
develop city-specific strategies for Fashion; investigate 
Pune-Furniture's underperformance.

### 3.2 Correlation Analysis

**Quantity vs Total Sales:**
- Equation: y = 25,906x − 1,153
- R² = 0.4194

**Insight:** Moderate positive correlation. Quantity explains 
only ~42% of sales variation — the increasing spread at higher 
quantities indicates Unit_Price (which varies by product) is 
an equally important factor.

**Age vs Total Sales:**
- Equation: y = 12.141x + 138,182
- R² ≈ 0.000002 (essentially zero)

**Insight:** Virtually no linear correlation. This confirms 
that age affects spending through CATEGORY-SPECIFIC preferences 
(e.g., 18-24's Fashion premium buying) rather than a simple 
linear age-spending relationship.

**Key Takeaway:** Correlation coefficients only capture linear 
patterns. The near-zero R² for Age does NOT mean age is 
irrelevant — it means the relationship is non-linear and 
category-dependent, as proven by the Section 1.2 deep-dive.

---

## 4. Proposed Key Performance Indicators (KPIs)

| KPI | Current Value | Why It Matters |
|-----|----------------|------------------|
| Total Revenue | ₹13.59 Cr | Overall business health indicator |
| Average Order Value | ₹1,38,684.53 | Tracks pricing/upsell effectiveness |
| Revenue Concentration (High-tier %) | 69.3% | Reveals customer dependency risk |
| Category Revenue Share (Electronics) | 36.5% | Guides inventory/marketing priority |
| City Avg Order Value (Bengaluru) | ₹1,54,968 | Identifies premium vs volume markets |
| Age-Category Affinity (18-24 → Fashion) | +43.6% unit price | Enables precision marketing |

---

## 5. Conclusion

This analysis reveals that revenue in this sales dataset is 
driven by concentration, not uniformity — a small share of 
orders (High-tier, 36.5%) generates the majority of revenue 
(69.3%), Electronics dominates across every city, and the 
smallest customer segment (18-24) is actually the highest-value 
one due to premium Fashion buying. Age and Gender, often assumed 
to be primary spending drivers, show weak or no linear 
relationship with order value — the real driver is 
category-specific preference. 

**Top 3 Recommendations:**
1. Build retention programs targeting High-tier customers
2. Launch premium Fashion campaigns targeting the 18-24 segment
3. Maintain consistent Electronics inventory/marketing across 
   all city markets, while developing city-specific strategies 
   for Fashion
