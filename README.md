# Logistics & Supply Chain Analytics

## Project Overview

An end-to-end **Logistics & Supply Chain Analytics** project built to analyze shipment volume, delivery performance, carrier efficiency, warehouse operations, and shipping costs.

The project combines **MySQL, Power Query, Power BI, DAX, and data visualization** to transform raw logistics data into actionable operational insights.

## Business Objectives

- Measure overall logistics and shipment performance.
- Analyze on-time delivery and delivery delays.
- Compare carrier performance using delivery speed and on-time rate.
- Evaluate warehouse and vehicle-type performance.
- Analyze shipping costs across carriers and operations.
- Identify locations and operational areas associated with delivery issues.

## Tools & Technologies

- **SQL:** MySQL
- **Data Preparation:** Power Query
- **BI & Visualization:** Power BI
- **Calculations:** DAX
- **Data:** CSV logistics shipment data
- **Version Control:** Git / GitHub

## Project Workflow

```text
Raw CSV
   ↓
Data Cleaning & Transformation
   ↓
Power Query
   ↓
MySQL
   ↓
SQL Analysis
   ↓
Power BI Data Model
   ↓
DAX Measures & Calculated Columns
   ↓
3-Page Interactive Dashboard
   ↓
Business Insights
```

## Data Preparation

The raw logistics dataset was prepared before analysis. Key data-quality and transformation steps included:

- Standardized carrier names and handled inconsistent naming formats.
- Trimmed unwanted spaces and handled missing carrier values.
- Converted date fields into appropriate date formats.
- Validated numeric fields such as shipping cost and order value.
- Derived delivery performance fields from existing date columns.
- Created delivery-day calculations using order and actual delivery dates.
- Derived **On-Time / Late** status by comparing actual delivery dates with promised delivery dates.
- Created a date dimension for time-based analysis.

## SQL Analysis

The SQL analysis contains **15+ analytical queries** covering:

### Business KPIs
- Total orders
- Delivered orders
- Failed orders
- Total shipping cost
- Average shipping cost

### Delivery Performance
- Average delivery days
- On-time delivery percentage
- Delayed deliveries
- Delivery status analysis
- Monthly delivery trends

### Carrier Analysis
- Shipment volume by carrier
- Average delivery days by carrier
- Average shipping cost by carrier
- On-time delivery percentage by carrier
- Carrier performance ranking using window functions

### Warehouse & Location Analysis
- Orders by warehouse
- Delivery performance by warehouse
- Late deliveries by destination city
- High-cost routes
- Shipment volume by destination

### Advanced SQL
- `CASE WHEN`
- `GROUP BY`
- `HAVING`
- Date functions
- CTEs
- Window functions such as `RANK()`

## Power BI Dashboard

The final dashboard contains **3 pages** designed around a clear business narrative.

### Page 1 — Executive Overview

Focus: **What is happening across the logistics operation?**

Key elements:

- Total Orders
- Total Shipping Cost
- Total Order Value
- Average Shipping Cost
- Monthly order trend
- Delivery status distribution

### Page 2 — Delivery Performance

Focus: **How efficiently are orders being delivered?**

Key elements:

- Delivered Orders
- Delayed Orders
- On-Time Delivery %
- On-Time Orders
- Monthly on-time delivery trend
- On-Time Delivery % by Carrier
- Delivery status by month

### Page 3 — Carrier & Warehouse Analysis

Focus: **Which operational areas are performing differently?**

Key elements:

- Total Orders
- Total Shipping Cost
- On-Time Delivery %
- Average Shipping Cost
- Carrier performance comparison
- Warehouse-level on-time orders
- Average delivery days by warehouse
- Vehicle-type delivery analysis

## Key DAX Metrics

Examples of the main calculated metrics include:

```DAX
Average Delivery Days =
AVERAGE(Fact_Deliveries[Average Delivery Days])
```

```DAX
On Time Deliveries =
CALCULATE(
    COUNTROWS(Fact_Deliveries),
    Fact_Deliveries[On_Time] = "On Time"
)
```

```DAX
On Time % =
DIVIDE(
    [On Time Deliveries],
    [Delivered Orders],
    0
)
```

The project also uses calculated columns for row-level metrics such as delivery duration and on-time/late classification.

## Dashboard Design

The dashboard was designed to move from high-level business performance to operational analysis:

```text
Executive Overview
       ↓
Delivery Performance
       ↓
Carrier & Warehouse Analysis
```

This structure keeps the dashboard focused on **KPIs, trends, comparisons, and operational problem areas** instead of overcrowding pages with unnecessary visuals.

## Project Outcomes

The project demonstrates the ability to:

- Clean and transform real-world style logistics data.
- Perform business analysis using SQL.
- Build a relational Power BI data model.
- Create calculated columns and DAX measures.
- Analyze delivery reliability and operational efficiency.
- Compare carriers and warehouses using multiple KPIs.
- Build an interactive 3-page BI dashboard.
- Translate raw operational data into business-oriented insights.

## Quantified Project Scope

| Area | Scope |
|---|---:|
| Power BI dashboard pages | **3** |
| SQL analytical queries | **15+** |
| Core KPI metrics | **10+** |
| Main analysis areas | **5+** |
| Technologies used | **5** |
| Data preparation workflow | **End-to-end** |

> **Note:** Dataset-specific figures such as total rows, total orders, total shipping cost, and on-time percentage should be populated from the final cleaned dataset/dashboard rather than estimated. This avoids reporting fabricated project metrics.

## Repository Structure

```text
logistics-supply-chain-analytics/
│
├── README.md
├── data/
│   └── logistics_cleaned.csv
│
├── sql/
│   └── logistics_analysis.sql
│
├── powerbi/
│   └── logistics.pbix
│
└── screenshots/
    ├── executive-overview.png
    ├── delivery-performance.png
    └── carrier-warehouse-analysis.png
```

## Resume Description

**Logistics & Supply Chain Analytics | SQL, Power BI, DAX, Power Query**

- Built a **3-page Power BI dashboard** to analyze logistics KPIs including shipment volume, shipping cost, delivery speed, on-time delivery, carrier performance, and warehouse operations.
- Developed **15+ MySQL analytical queries** using aggregations, `CASE WHEN`, date functions, CTEs, and window functions to evaluate delivery and operational performance.
- Cleaned and transformed raw logistics data using **Power Query**, standardizing carrier names, handling missing values, validating data types, and creating derived delivery-performance fields.
- Created **10+ KPI metrics and DAX calculations** for on-time delivery %, average delivery days, delayed orders, shipping cost, and carrier/warehouse performance.
