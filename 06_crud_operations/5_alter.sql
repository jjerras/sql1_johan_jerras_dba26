DESC system.students;

ALTER TABLE students
MODIFY last_name VARCHAR2(101);

ALTER TABLE students
ADD email VARCHAR2(101);

ALTER TABLE students
DROP COLUMN major;

DESC system.students;

EXIT