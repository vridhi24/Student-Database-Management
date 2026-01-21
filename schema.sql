CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL,
    dept_level VARCHAR(30) DEFAULT 'ASSISTANT PROFESSOR'
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INT CHECK (age >= 17),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    enroll_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
