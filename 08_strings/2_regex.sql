-- clean spaces
SELECT
    s AS original,
    REGEXP_REPLACE(s, ' +', ' ') AS cleaned_string
FROM (SELECT '  hello   there     pal    ' AS s);

SELECT
    s,
    REGEXP_REPLACE(s, '[A-Za-zÅÄÖåäö]+', 'X') AS only_letters,
    REGEXP_REPLACE(s, '[^0-9]', ' ') AS only_numbers
FROM (SELECT 'Order#1221321 - Björn23@hotmail.com' AS s);

EXIT
    