-- before delete-> check with SELECT first
SELECT * FROM students WHERE
FIRST_NAME = 'Liam' AND LAST_NAME = 'Miller';

DELETE FROM students WHERE
FIRST_NAME = 'Liam' AND LAST_NAME = 'Miller';