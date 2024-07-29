-- operators,create ,drop,use,insert

-- Create a new database
CREATE DATABASE StudentDB;

-- Use the created database
USE StudentDB;

-- Create the student table
-- CREATE TABLE Students (
--     StudentID INT PRIMARY KEY,
--     FirstName VARCHAR(50),
--     LastName VARCHAR(50),
--     Age INT,
--     Gender CHAR(1),
--     Grade DECIMAL(3, 2)
-- );

-- Insert sample data into the Students table
-- INSERT INTO Students (StudentID, FirstName, LastName, Age, Gender, Grade)
-- VALUES
-- (1, 'John', 'Doe', 20, 'M', 3.5),
-- (2, 'Jane', 'Smith', 22, 'F', 3.8),
-- (3, 'Alice', 'Johnson', 21, 'F', 3.9),
-- (4, 'Bob', 'Brown', 23, 'M', 3.2),
-- (5, 'Charlie', 'Davis', 20, 'M', 3.6);

-- -- arithmetic operration
-- -- Add 1 to the Age of each student
-- SELECT StudentID, FirstName, Age, Age + 1 AS AgeNextYear
-- FROM Students;

-- -- Subtract 1 from the Grade of each student
-- SELECT StudentID, FirstName, Grade, Grade - 1 AS GradeAfterPenalty
-- FROM Students;

-- -- Multiply the Grade of each student by 2
-- SELECT StudentID, FirstName, Grade, Grade * 2 AS GradeDoubled
-- FROM Students;

-- -- Divide the Grade of each student by 2
-- SELECT StudentID, FirstName, Grade, Grade / 2 AS GradeHalved
-- FROM Students;


-- -- comparison operators
-- -- Select students with a Grade greater than 3.5
-- SELECT * FROM Students
-- WHERE Grade > 3.5;

-- -- Select students with an Age less than or equal to 21
-- SELECT * FROM Students
-- WHERE Age <= 21;

-- -- Select students with a Grade equal to 3.5
-- SELECT * FROM Students
-- WHERE Grade = 3.5;

-- -- Select students with an Age not equal to 22
-- SELECT * FROM Students
-- WHERE Age <> 22;

-- logical opreators
-- Select students who are female and have a Grade greater than 3.5
-- SELECT * FROM Students
-- WHERE Gender = 'F' AND Grade > 3.5;

-- Select students who are either male or have an Age less than 21
-- SELECT * FROM Students
-- WHERE Gender = 'M' OR Age < 21;

-- Select students who are not male
-- SELECT * FROM Students
-- WHERE NOT Gender = 'M';

-- between operator
-- Select students with an Age between 20 and 22
-- SELECT * FROM Students
-- WHERE Age BETWEEN 20 AND 22;

-- in operator
-- Select students with an Age of either 20, 21, or 22
-- SELECT * FROM Students
-- WHERE Age IN (20, 21, 22);

-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_description TEXT
);

-- Create Enrollments table (junction table)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    UNIQUE(student_id, course_id)
);
-- Insert sample data into Students table
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email) VALUES
(1, 'John', 'Doe', '2000-01-01', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '1999-05-15', 'jane.smith@example.com');

-- Insert sample data into Courses table
INSERT INTO Courses (course_id, course_name, course_description) VALUES
(1, 'Database Systems', 'Introduction to database systems'),
(2, 'Operating Systems', 'Introduction to operating systems');

-- Insert sample data into Enrollments table
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) VALUES
(1, 1, 1, '2024-07-01', 'A'),
(2, 1, 2, '2024-07-01', 'B'),
(3, 2, 1, '2024-07-01', 'A');

SELECT * FROM Enrollments;
SELECT * FROM Courses;
SELECT * FROM Students;


-- characterstics of null ,diff b/w primary and foriegn key,features of primary ,foriegn ,unique,check.
