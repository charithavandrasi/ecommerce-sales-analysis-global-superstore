-- Best and worst products by profitability
SELECT
    "Product Name",
    ROUND(SUM(Profit),2) AS total_profit
FROM orders_clean
GROUP BY "Product Name"
ORDER BY total_profit DESC
LIMIT 10;

-- Loss-making products
SELECT
    "Product Name",
    ROUND(SUM(Profit),2) AS total_profit
FROM orders_clean
GROUP BY "Product Name"
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;

