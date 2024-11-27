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

SELECT *
FROM Country c
INNER JOIN Persons p ON c.country_id = p.country_id;

SELECT *
FROM Country c
LEFT JOIN Persons p ON c.country_id = p.country_id;

SELECT *
FROM Country c
RIGHT JOIN Persons p ON c.country_id = p.country_id;

SELECT DISTINCT country_name
FROM Country

UNION

SELECT DISTINCT country_name
FROM Persons;

SELECT country_name
FROM Country

UNION ALL

SELECT country_name
FROM Persons;

SELECT person_id, name, ROUND(rating) AS rounded_rating
FROM Persons;


