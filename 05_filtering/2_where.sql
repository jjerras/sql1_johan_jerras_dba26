SET PAGESIZE 100

SELECT * FROM amazon
FETCH FIRST 5 ROWS ONLY;

DESC system.amazon;

SELECT
    order_id,
    category,
    product_name,
    sales,
    quantity,
    profit
FROM amazon
WHERE 
    profit > 190

ORDER BY profit DESC
;

-- Number of order where profit is greater than 190
SELECT COUNT(*)
FROM amazon
WHERE profit > 190;

-- All orderlines for order_id = 'CA-2011-115812'
SELECT *
FROM amazon
WHERE order_id = 'CA-2011-115812';

-- Select by costumer by email
SELECT *
FROM amazon
WHERE emailid = 'BrosinaHoffman@gmail.com';

-- Sales stats