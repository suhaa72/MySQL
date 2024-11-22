create database CompanyDB;

USE companyDB;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

create database Personsdtl;

USE Persondtl;

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 38000000, 9984670),
(3, 'UK', 68497907, 243610),
(4, 'India', 1393409038, 3287263),
(5, 'Australia', 25687041, 7692024),
(6, 'Germany', 83166711, 357022),
(7, 'France', 67364357, 551695),
(8, 'China', 1444216107, 9596961),
(9, 'Brazil', 213993437, 8515767),
(10, 'South Africa', 59308690, 1219090);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 3.8, 2, 'Canada'),
(3, 'Michael', 'Johnson', 68497907, 4.6, 3, 'UK'),
(4, 'Aaliya', 'Patel', 1393409038, 4.7, 4, 'India'),
(5, 'David', 'Brown', 25687041, 4.2, 5, 'Australia'),
(6, 'Emily', 'Davis', 83166711, 3.9, 6, 'Germany'),
(7, 'Robert', 'Miller', 67364357, 4.3, 7, 'France'),
(8, 'Sophia', 'Anderson', 1444216107, 4.8, 8, 'China'),
(9, 'James', 'Taylor', 213993437, 4.1, 9, 'Brazil'),
(10, 'Laura', 'Wilson', 59308690, 4.5, 10, 'South Africa');

SELECT DISTINCT Country_name
FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name
FROM Persons;

SELECT * 
FROM Persons
WHERE Rating > 4.0;

SELECT Country_name
FROM Country
WHERE Population > 1000000;

SELECT * 
FROM Persons
WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * 
FROM Persons
WHERE Country_name IS NULL;

SELECT * 
FROM Persons
WHERE Country_name IN ('USA', 'Canada', 'UK');


SELECT * 
FROM Persons
WHERE Country_name NOT IN ('India', 'Australia');

SELECT Country_name
FROM Country
WHERE Population BETWEEN 500000 AND 2000000;

SELECT Country_name
FROM Country
WHERE Country_name NOT LIKE 'C%';


