SET PAGESIZE 100

DESC system.amazon;

SELECT AVG(profit)
FROM amazon;

SELECT
    product_name,
    category,
    profit,
    CASE
        WHEN profit = MAX(profit) OVER () THEN 'Highest profit product'
        WHEN profit > AVG(profit) OVER () + 25 THEN 'High profit product'
        WHEN profit > AVG(profit) OVER () + 10 THEN 'Good profit product'
        WHEN profit > AVG(profit) OVER () + 5 THEN 'Moderate profit product'
        WHEN profit < AVG(profit) OVER () - 5 THEN 'Below average profit product'
        WHEN profit < AVG(profit) OVER () - 10 THEN 'Significantly below average profit product'
        WHEN profit < AVG(profit) OVER () - 25 THEN 'Extremely below average profit product'
        ELSE 'Average profit product'
    END AS profit_levels
FROM amazon
FETCH FIRST 1 PERCENT ROWS ONLY;


EXIT
