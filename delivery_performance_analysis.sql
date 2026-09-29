--Question 1: Business Question: What is our overall network On-Time Delivery (OTD) rate and total order volume?

SELECT 
    COUNT(order_id) AS total_orders_handled,
    SUM(CASE WHEN late_delivery = 'No' THEN 1 ELSE 0 END) AS on_time_orders,
    SUM(CASE WHEN late_delivery = 'Yes' THEN 1 ELSE 0 END) AS delayed_orders,
    ROUND(SUM(CASE WHEN late_delivery = 'No' THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id), 2) AS otd_percentage
FROM delivery_performance;

--Question 2: Which specific warehouses or fulfillment centers have the highest average delay days and late percentages?

SELECT 
    warehouse_id,
    warehouse_city,
    COUNT(order_id) AS total_orders_processed,
    ROUND(AVG(delivery_delay_days), 2) AS avg_delay_days,
    ROUND(SUM(CASE WHEN late_delivery = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id), 2) AS late_percentage
FROM delivery_performance
GROUP BY warehouse_id, warehouse_city
ORDER BY avg_delay_days DESC;

--Question 3: Which shipping carriers have the highest failure rates relative to their shipment volumes?

SELECT 
    carrier,
    COUNT(order_id) AS total_shipments,
    ROUND(AVG(delivery_delay_days), 2) AS avg_delay_days,
    ROUND(SUM(CASE WHEN late_delivery = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id), 2) AS failure_rate_pct
FROM delivery_performance
GROUP BY carrier
ORDER BY failure_rate_pct DESC;

--Question 4: How significantly do severe weather conditions impact our transit time compared to normal operations?

SELECT 
    weather_condition,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(delivery_delay_days), 2) AS avg_delay_days
FROM delivery_performance
GROUP BY weather_condition
ORDER BY avg_delay_days DESC;

--Question 5:Is there a measurable correlation between late deliveries and customer product return requests?

SELECT 
    late_delivery,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(CASE WHEN return_requested = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id), 2) AS return_rate_pct
FROM delivery_performance
GROUP BY late_delivery;