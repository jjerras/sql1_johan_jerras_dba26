
SET PAGESIZE 1000

DESC system.salaries_sf;

SELECT * FROM salaries_sf
FETCH FIRST 5 ROWS ONLY;

-- count rows and alias
SELECT COUNT(*) AS number_rows
FROM salaries_sf;

-- unique job titles
SELECT 
    COUNT(DISTINCT jobtitle) AS unique_jobs,
    COUNT(DISTINCT year) AS unique_years,
    COUNT(DISTINCT agency) AS unique_agency
FROM salaries_sf;

SELECT DISTINCT agency FROM salaries_sf;



EXIT