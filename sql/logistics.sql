

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM logistics_table;

-- Total Delivered Orders
SELECT COUNT(*) AS delivered_orders
FROM logistics_table
WHERE delivery_status = 'Delivered';

-- Average Shipping Cost
SELECT ROUND(AVG(shipping_cost_inr), 2) AS avg_shipping_cost
FROM logistics_table;

-- Average Delivery Days
SELECT
    ROUND(
        AVG(
            DATEDIFF(actual_delivery_date, order_date)
        ), 2
    ) AS avg_delivery_days
FROM logistics_table
WHERE delivery_status = 'Delivered';

-- On Time Delivery %
SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN actual_delivery_date <= promised_delivery_date
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS on_time_percentage
FROM logistics_table
WHERE delivery_status = 'Delivered';

-- Carrier Performance
SELECT
    carrier,
    COUNT(*) AS total_shipments,
     
    AVG(`Average Delivery Days`) AS avg_delivery_days,
    ROUND(AVG(shipping_cost_inr), 2) AS avg_shipping_cost
FROM logistics_table
WHERE delivery_status = 'Delivered'
GROUP BY carrier
ORDER BY avg_delivery_days;

-- Warehouse Analysis
SELECT
    warehouse,
    COUNT(*) AS total_orders,
     ROUND(AVG(DATEDIFF(actual_delivery_date, order_date)), 2) AS avg_delivery_days,
    ROUND(AVG(shipping_cost_inr), 2) AS avg_shipping_cost
FROM logistics_table
GROUP BY warehouse
ORDER BY total_orders DESC;

-- City Analysis
SELECT
    destination_city,
    COUNT(*) AS total_orders
FROM logistics_table
GROUP BY destination_city
ORDER BY total_orders DESC;

-- Shipping Cost Analysis
SELECT 
    carrier,
    ROUND(SUM(TRIM(REPLACE(Shipping_Cost_INR, 'â‚¹', ''))),
            2) AS avg_shipping_cost
FROM
    logistics_table
GROUP BY carrier;

-- Delivery Buckets

SELECT 
    CASE
        WHEN (`delivery days`) <= 2 THEN '0-2 Days'
        WHEN (`delivery days`) <= 5 THEN '3-5 Days'
        WHEN (`delivery days`) <= 8 THEN '5-7 Days'
        ELSE '8+ Days'
    END AS delivery_bucket,
    COUNT(*) AS shipments
FROM
    logistics_table
WHERE
    Delivery_Status = 'Delivered'
GROUP BY delivery_bucket
ORDER BY shipments DESC;

-- Rank carriers by on-time performance

WITH carrier_performance as (
SELECT 
    carrier,
    ROUND(100 * SUM(CASE
                WHEN on_time = 'On Time' THEN 1
                ELSE 0
            END) / COUNT(*),
            2) AS on_time_percentage
FROM
    logistics_table
WHERE
    Delivery_Status = 'Delivered'
GROUP BY Carrier
)

SELECT carrier,on_time_percentage,
RANK() OVER(ORDER BY on_time_percentage) AS performance_rank
FROM carrier_performance;

-- Most expensive routes
SELECT 
    warehouse,
    destination_city,
    COUNT(*) AS shipments,
    ROUND(SUM(TRIM(REPLACE(Shipping_Cost_INR, 'â‚¹', ''))),
            2) AS avg_shipping_cost
FROM
    logistics_table
GROUP BY warehouse , destination_city
ORDER BY avg_shipping_cost DESC
LIMIT 10