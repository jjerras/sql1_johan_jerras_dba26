SELECT * FROM courses;

-- what professor teaches which course and when?
SELECT
    p.first_name || ' ' || p.last_name AS professor,
    s.term || '-' || SUBSTR(s.academic_year,3) AS course_given,
    c.title,
    c.course_code,
    c.credits
FROM professors p
JOIN sections s ON s.professor_id = p.professor_id
JOIN courses c ON c.course_id = s.course_id;

-- what courses students enrolled in and the departments for courses and students
SELECT
    s.first_name || ' ' || s.last_name AS student_name,
    ds.department_name AS students_department
FROM students s
JOIN departments ds ON ds.department_id = s.major_dept_id;