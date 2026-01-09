-- Top 10 customers by revenue
SELECT
    "Customer Name",
    ROUND(SUM(Sales),2) AS revenue
FROM orders_clean
GROUP BY "Customer Name"
ORDER BY revenue DESC
LIMIT 10;

-- Repeat customers
SELECT
    "Customer ID",
    COUNT(DISTINCT "Order ID") AS order_count
FROM orders_clean
GROUP BY "Customer ID"
HAVING order_count > 1
ORDER BY order_count DESC;

