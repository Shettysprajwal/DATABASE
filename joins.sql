-- Create the database
CREATE DATABASE EmployeeDetailsDB;

-- Use the database
USE EmployeeDetailsDB;

-- Create the Employee table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

-- Create the Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Create the Project table
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT
);
-- Insert data into the Employee table
INSERT INTO Employee (EmpID, Name, DepartmentID, Salary)
VALUES
(1, 'Alice', 1, 60000.00),
(2, 'Bob', 2, 75000.00),
(3, 'Charlie', 1, 50000.00),
(4, 'Diana', 3, 85000.00),
(5, 'Eve', NULL, 55000.00);

-- Insert data into the Department table
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Finance');

-- Insert data into the Project table
INSERT INTO Project (ProjectID, ProjectName, DepartmentID)
VALUES
(1, 'Project Alpha', 2),
(2, 'Project Beta', 3),
(3, 'Project Gamma', 1);

