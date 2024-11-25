create database Country;

USE Country;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(255),
    Population INT,
    Area INT
);

create database Persons;



CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    Population INT,
    Rating INT,
    Country_Id INT,
    Country_name VARCHAR(255),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

SELECT SUBSTRING(Country_name, 1, 3) AS First_Three_Characters
FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS Full_Name
FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS Unique_Countries
FROM Persons;

SELECT MAX(Population) AS Max_Population
FROM Country;

SELECT MIN(Population) AS Min_Population
FROM Persons;


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES (11, 'John', NULL, 1000, 4, 1, 'CountryA'),
       (12, 'Jane', NULL, 5000, 5, 2, 'CountryB');


SELECT COUNT(Lname) AS Lname_Count
FROM Persons;

SELECT COUNT(*) AS Number_of_Rows
FROM Persons;

SELECT Population
FROM Country
LIMIT 3;

SELECT *
FROM Country
ORDER BY RAND()
LIMIT 3;

SELECT *
FROM Persons
ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;


