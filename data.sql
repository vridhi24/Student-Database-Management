-- Insert into department
INSERT INTO department (dept_id, dept_name, dept_level) VALUES
(1, 'CSE', 'ASSISTANT PROFESSOR'),
(2, 'ECE', 'ASSOCIATE PROFESSOR'),
(3, 'ME', 'ASSISTANT PROFESSOR');

-- Insert into student
INSERT INTO student (student_id, name, age, dept_id) VALUES
(101, 'Amit', 20, 1),
(102, 'Riya', 21, 2),
(103, 'Neha', 22, 1),
(104, 'Karan', 19, 3);

-- Insert into course
INSERT INTO course (course_id, course_name, dept_id) VALUES
(201, 'DBMS', 1),
(202, 'DSA', 1),
(203, 'Signals', 2),
(204, 'Thermodynamics', 3);

-- Insert into enrollment
INSERT INTO enrollment (student_id, course_id, enroll_date) VALUES
(101, 201, '2024-01-10'),
(101, 202, '2024-01-12'),
(102, 203, '2024-01-15'),
(103, 201, '2024-01-11'),
(104, 204, '2024-01-18');
