-- Create the 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    major VARCHAR(50)
);

-- Create the 'courses' table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50)
);

-- Create the 'professors' table
CREATE TABLE professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

-- Create the 'enrollments' table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
-- Insert data into the 'students' table
INSERT INTO students (student_id, first_name, last_name, birth_date, major)
VALUES
(1, 'John', 'Doe', '2000-05-15', 'Computer Science'),
(2, 'Jane', 'Smith', '1999-08-21', 'Mathematics'),
(3, 'Mike', 'Brown', '2001-11-30', 'Physics');

-- Insert data into the 'courses' table
INSERT INTO courses (course_id, course_name, department)
VALUES
(101, 'Introduction to Computer Science', 'Computer Science'),
(102, 'Calculus I', 'Mathematics'),
(103, 'General Physics', 'Physics');

-- Insert data into the 'professors' table
INSERT INTO professors (professor_id, first_name, last_name, department)
VALUES
(1, 'Alice', 'Johnson', 'Computer Science'),
(2, 'Bob', 'Williams', 'Mathematics'),
(3, 'Charlie', 'Davis', 'Physics');

-- Insert data into the 'enrollments' table
INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date, grade)
VALUES
(1, 1, 101, '2022-01-15', 'A'),
(2, 2, 102, '2022-01-16', 'B'),
(3, 3, 103, '2022-01-17', 'C'),
(4, 1, 102, '2022-01-18', 'A'),
(5, 2, 101, '2022-01-19', 'B');
-- Calculate the average grade for each student
SELECT student_id, AVG(grade) AS average_grade
FROM enrollments
GROUP BY student_id;

-- Calculate the number of students enrolled in each course
SELECT course_id, COUNT(student_id) AS student_count
FROM enrollments
GROUP BY course_id;
-- Select distinct majors
SELECT DISTINCT major
FROM students;

-- Select students with aliasing
SELECT first_name AS fname, last_name AS lname, major
FROM students;
-- INNER JOIN: Get the list of students and the courses they are enrolled in
SELECT s.first_name, s.last_name, c.course_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- LEFT JOIN: Get the list of students and the courses they are enrolled in (include students with no enrollments)
SELECT s.first_name, s.last_name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

-- RIGHT JOIN: Get the list of courses and the students enrolled in them (include courses with no students enrolled)
SELECT s.first_name, s.last_name, c.course_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;

-- FULL OUTER JOIN: Get the list of students and courses (include all students and all courses)
SELECT s.first_name, s.last_name, c.course_name
FROM students s
FULL OUTER JOIN enrollments e ON s.student_id = e.student_id
FULL OUTER JOIN courses c ON e.course_id = c.course_id;
-- Grant SELECT privilege to a user
GRANT SELECT ON students TO 'username';

-- Revoke SELECT privilege from a user
REVOKE SELECT ON students FROM 'username';
-- Drop the 'enrollments' table
DROP TABLE enrollments;