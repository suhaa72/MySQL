CREATE DATABASE Company;

USE Company;

CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18),  -- Ensures age is at least 18
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Default to current timestamp
    Gender VARCHAR(10),
    Department VARCHAR(50) NOT NULL,  -- Department is required
    Salary DECIMAL(10, 2) NOT NULL  -- Salary cannot be null
);

 INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1980-02-15', 44, 'Male', 'HR', 35000),
(2, 'Jane', 'Smith', '1985-04-22', 39, 'Female', 'IT', 28000),
(3, 'Michael', 'Johnson', '1990-11-10', 34, 'Male', 'Finance', 40000),
(4, 'Aaliya', 'Patel', '1988-07-30', 36, 'Female', 'IT', 26000),
(5, 'David', 'Brown', '1975-01-14', 49, 'Male', 'Sales', 30000),
(6, 'Emily', 'Davis', '1992-05-06', 32, 'Female', 'Marketing', 23000),
(7, 'Robert', 'Miller', '1983-03-23', 41, 'Male', 'Finance', 45000),
(8, 'Laura', 'Wilson', '1979-09-12', 45, 'Female', 'HR', 38000),
(9, 'James', 'Taylor', '1995-10-05', 29, 'Male', 'Sales', 21000),
(10, 'Sophia', 'Anderson', '1982-12-25', 42, 'Female', 'Marketing', 25000);

 SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

 SELECT First_Name, Last_Name, Salary * 12 AS Annual_Income
FROM Managers;

SELECT * 
FROM Managers
WHERE First_Name != 'Aaliya' OR Last_Name != 'Patel';

SELECT * 
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT * 
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

