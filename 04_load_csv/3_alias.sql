DESC system.salaries_sf;

SELECT * FROM salaries_sf
ORDER BY employeename
FETCH FIRST 5 ROWS ONLY;

-- alias either with AS or just a space
SELECT 
    COUNT(*),
    ROUND(AVG(basepay)) AS avg_basepay,
    ROUND(AVG(totalpay)) AS avg_totalpay,
    ROUND(AVG(totalpaybenefits)) AS avg_totalpaybenefits,
    COUNT(DISTINCT year) AS unique_years,
    COUNT(DISTINCT jobtitle) AS unique_jobs
FROM salaries_sf;

SELECT DISTINCT year FROM salaries_sf;


EXIT