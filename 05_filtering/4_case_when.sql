SET PAGESIZE 100

DESC system.amazon;

SELECT AVG(profit)
FROM amazon;

SELECT
    product_name,
    category,
    profit,
    CASE
        WHEN profit IS NULL THEN 'No Profit data'
        WHEN profit < AVG(profit) -1 THEN 'Below Average'
        WHEN profit < AVG(profit) - 5 THEN 'Low Profit'
        WHEN profit BETWEEN AVG(profit) AND AVG(profit) + 5 THEN 'Average'
        WHEN profit > AVG(profit) + 1 THEN 'Above Average'
        WHEN profit < MAX(profit) OVER () -10 THEN 'Top Profit'
        ELSE 'Top earning Products'
    END AS profit_levels
FROM amazon
FETCH FIRST 1 PERCENT ROWS ONLY;


EXIT