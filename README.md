# Supply-chain-performance-analytics-snowflake

## Project Overview

This project demonstrates an end-to-end Supply Chain Analytics solution using Snowflake, SQL, and Microsoft Excel. The objective was to analyze supplier performance, inventory health, product demand, and delivery performance to generate actionable business insights and support supply chain decision-making.

The project simulates a real-world supply chain environment and includes data related to products, suppliers, inventory, purchase orders, deliveries, and customer orders.

---

## Business Objectives

- Monitor supplier performance and delivery reliability.
- Identify inventory shortages and stockout risks.
- Analyze product demand patterns.
- Track key supply chain KPIs.
- Support inventory planning and replenishment decisions.
- Generate data-driven recommendations for supply chain improvement.

---

## Tools & Technologies

- Snowflake
- SQL
- Microsoft Excel
- Pivot Tables
- Charts & Dashboards

---

## Dataset Overview

The project consists of six interconnected datasets:

| Table | Description |
|---------|------------|
| Products | Product master data |
| Suppliers | Supplier information |
| Inventory | Current inventory levels |
| Purchase_Orders | Procurement transactions |
| Deliveries | Supplier delivery records |
| Customer_Orders | Product demand and sales orders |

Total Records: 5,000+

---

## Key Analyses Performed

### 1. Supplier Delivery Performance Analysis

Analyzed supplier delivery behavior by calculating average delivery delays.

**Business Goal:**
Identify suppliers causing delivery disruptions.

---

### 2. On-Time Delivery Analysis

Measured supplier delivery performance against expected delivery dates.

**KPI:**
On-Time Delivery %

**Result:**
Overall On-Time Delivery Performance = 25.8%

---

### 3. Inventory Deficit Analysis

Compared inventory levels against customer demand.

**Business Goal:**
Identify products at risk of stockouts.

Products with inventory deficits:
- Hydraulic Parts 19 (P019)
- Fasteners 85 (P085)

---

### 4. Inventory Buffer Analysis

Calculated stock buffer levels using:

Stock Buffer = Current Stock - Reorder Point

**Business Goal:**
Identify products with low inventory coverage.

---

### 5. Demand Analysis

Identified the most demanded products based on customer orders.

**Business Goal:**
Support inventory planning and demand forecasting.

Top Product:
- Electrical Components 35 (P035)

---

## Dashboard Components

### KPI Cards

- Total Products
- Total Suppliers
- Total Purchase Orders
- On-Time Delivery %
- Products in Deficit
- Worst Performing Supplier

### Visualizations

1. Top 10 Suppliers by Average Delivery Delay
2. Top 10 Suppliers by On-Time Delivery %
3. Products with Lowest Inventory Buffer
4. Top 10 Most Demanded Products

---

## Key Insights

- Supplier_39 recorded the highest average delivery delay (5.3 days).
- Overall On-Time Delivery performance was 25.8%, highlighting opportunities to improve delivery reliability.
- Hydraulic Parts 19 (P019) and Fasteners 85 (P085) showed inventory deficits, creating potential stockout risks.
- Fasteners 85 (P085) had the lowest inventory buffer, requiring close inventory monitoring and replenishment planning.
- Electrical Components 35 (P035) was the highest-demand product with total demand of 216,000 units.
- Hydraulic Parts 19 (P019) combined high demand with a negative stock balance, making it a critical product for inventory planning.

---

## Business Recommendations

- Monitor high-delay suppliers and implement corrective actions.
- Improve supplier performance management processes.
- Increase inventory monitoring for products with low stock buffers.
- Prioritize replenishment planning for products showing inventory deficits.
- Align inventory levels with demand trends to reduce stockout risk.
- Track supply chain KPIs regularly through dashboard reporting.

---

## Project Outcome

This project demonstrates how supply chain data can be transformed into actionable insights using Snowflake, SQL, and Excel. The dashboard enables monitoring of supplier performance, inventory risks, and demand patterns to support operational decision-making and continuous improvement initiatives.

---

## Author

**Aarati Kuchekar**

LinkedIn: www.linkedin.com/in/aarati-kuchekar-36665b1b2

GitHub: https://github.com/kuchekaraarati
