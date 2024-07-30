CREATE DATABASE StudentMarkDB;
USE StudentMarkDB;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(100),
    Mark INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
-- Insert data into the Student table
INSERT INTO Student (StudentID, Name, Age, Gender)
VALUES
(1, 'Alice', 20, 'Female'),
(2, 'Bob', 22, 'Male'),
(3, 'Charlie', 21, 'Male'),
(4, 'Diana', 20, 'Female'),
(5, 'Eve', 22, 'Female');

-- Insert data into the Marks table
INSERT INTO Marks (MarkID, StudentID, Subject, Mark)
VALUES
(1, 1, 'Math', 85),
(2, 1, 'Science', 90),
(3, 2, 'Math', 78),
(4, 2, 'Science', 83),
(5, 3, 'Math', 92),
(6, 3, 'Science', 88),
(7, 4, 'Math', 75),
(8, 4, 'Science', 80),
(9, 5, 'Math', 95),
(10, 5, 'Science', 89);

-- Select all data from the Student table
SELECT * FROM Student;

-- Select all data from the Marks table
SELECT * FROM Marks;
