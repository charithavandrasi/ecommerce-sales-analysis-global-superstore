-- Return rate
SELECT
    SUM(Returned) * 100.0 / COUNT(*) AS return_rate_percentage
FROM orders_clean;
-- Category return counts
SELECT
    Category,
    SUM(Returned) AS total_returns
FROM orders_clean
ORDER BY total_returns DESC;
