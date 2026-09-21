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





## Project Outcomes

The project demonstrates the ability to:

- Clean and transform real-world style logistics data.
- Perform business analysis using SQL.
- Build a relational Power BI data model.
- Create calculated columns and DAX measures.
- Analyze delivery reliability and operational efficiency.
- Compare carriers and warehouses using multiple KPIs.
- Translate raw operational data into business-oriented insights.
  
## Business Recommendations

- Review low-performing carriers by investigating carriers with lower on-time rates or higher delivery times.
- Optimize carrier allocation using a combination of delivery reliability, delivery speed, shipment capacity, and cost.
- Investigate high-delay cities/routes to determine whether delays are related to distance, traffic, warehouse processing, or carrier coverage.
- Review warehouse bottlenecks where high shipment volumes coincide with weaker delivery performance.
- Monitor delivery KPIs regularly, particularly On-Time %, Average Delivery Days, and Delayed Orders.
- Investigate high-cost carriers/routes and compare their cost against the service level they provide.
- Improve data-quality controls by standardizing carrier names and validating important shipment fields during data ingestion.


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
    ├── executive-overview.jpg
    ├── delivery-performance.jpg
    └── carrier-warehouse-analysis.jpg
```


