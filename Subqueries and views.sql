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

SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name;

SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name
ORDER BY Number_of_Persons DESC;

SELECT Country_name, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING AVG(Rating) > 3.0;

SELECT Country_name
FROM Persons
WHERE Rating = (SELECT AVG(Rating) FROM Persons WHERE Country_name = 'USA');

SELECT Country_name
FROM Country_name
WHERE Population > (SELECT AVG(Population) FROM Country_name);

CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Email VARCHAR(255),
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_code VARCHAR(10),
    Country VARCHAR(100)
);

CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT * 
FROM Customer
WHERE Country = 'USA';

SELECT * FROM US_Customers;

CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email, Phone_no, State
FROM Customer;

SELECT * FROM Customer_details;

UPDATE Customer
SET Phone_no = 'new_phone_number' 
WHERE State = 'California';


SELECT * FROM Customer_details WHERE State = 'California';

SELECT State, COUNT(*) AS Customer_Count
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS Customer_Count
FROM Customer_details
GROUP BY State;

SELECT * 
FROM Customer_details
ORDER BY State ASC;




