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
SELECT * FROM students;

SELECT
    s.first_name || ' ' || s.last_name AS student_name,
    ds.department_name AS students_department,
    c.title,
    c.credits
FROM students s
LEFT JOIN departments ds ON ds.department_id = s.major_dept_id
LEFT JOIN enrollments e ON e.student_id = s.student_id
LEFT JOIN sections sec ON sec.section_id = e.section_id
LEFT JOIN courses c ON c.course_id = sec.course_id
LEFT JOIN departments dc ON dc.department_id = c.department_id
WHERE dc.department_name = 'Computer Science'
;