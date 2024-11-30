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

ALTER TABLE Persons
ADD DOB DATE;
 
 DELIMITER $$

CREATE FUNCTION CalculateAge(DOB DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Age INT;

    -- Calculate the age using TIMESTAMPDIFF and adjusting if the birthday has passed this year
    SET Age = TIMESTAMPDIFF(YEAR, DOB, CURDATE()) - 
              (IF(MONTH(DOB) > MONTH(CURDATE()) OR 
                  (MONTH(DOB) = MONTH(CURDATE()) AND DAY(DOB) > DAY(CURDATE())), 1, 0));
    
    RETURN Age;
END $$

DELIMITER ;
 
 SELECT Name, CalculateAge(DOB) AS Age
FROM Persons;

SELECT CountryName, CHAR_LENGTH(CountryName) AS CountryNameLength
FROM Country;

SELECT CountryName, LEFT(CountryName, 3) AS FirstThreeCharacters
FROM Country;

SELECT CountryName, UPPER(CountryName) AS UppercaseCountryName
FROM Country;

SELECT CountryName, LOWER(CountryName) AS LowercaseCountryName
FROM Country;

  
  



 
 