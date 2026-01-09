-- Total sales & profit
SELECT
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM orders_clean;
-- Sales by year
SELECT
    Year,
    ROUND(SUM(Sales),2) AS yearly_sales
FROM orders_clean
GROUP BY Year
ORDER BY Year;
