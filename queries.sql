-- 1. Student name with department
SELECT s.name AS student_name, d.dept_name
FROM student s
JOIN department d
ON s.dept_id = d.dept_id;

-- 2. Student and courses enrolled
SELECT s.name AS student_name, c.course_name
FROM student s
JOIN enrollment e ON s.student_id = e.student_id
JOIN course c ON e.course_id = c.course_id;

-- 3. Department-wise student count
SELECT d.dept_name, COUNT(s.student_id) AS student_count
FROM department d
LEFT JOIN student s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

-- 4. Students enrolled in more than one course
SELECT s.name, COUNT(e.course_id) AS course_count
FROM student s
JOIN enrollment e ON s.student_id = e.student_id
GROUP BY s.student_id, s.name
HAVING COUNT(e.course_id) > 1;

-- 5. Course popularity (number of students per course)
SELECT c.course_name, COUNT(e.student_id) AS enrolled_students
FROM course c
LEFT JOIN enrollment e
ON c.course_id = e.course_id
GROUP BY c.course_name;
