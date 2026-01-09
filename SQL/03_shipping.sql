-- Average ship days by region
SELECT
    Region,
    ROUND(AVG("Ship Days"),2) AS avg_ship_time
FROM orders_clean
GROUP BY Region
ORDER BY avg_ship_time;

-- Long shipments (> 5 days)
SELECT
    COUNT(*) AS late_shipments
FROM orders_clean
WHERE "Ship Days" > 5;

