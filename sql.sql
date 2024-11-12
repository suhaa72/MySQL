create database School;

USE School;

CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(100),
    Marks INT,
    Grade CHAR(1)
);

INSERT INTO STUDENT (Roll_No, Name, Marks, Grade)
VALUES
(1, 'John Doe', 85, 'B'),
(2, 'Jane Smith', 90, 'A'),
(3, 'Jim Brown', 70, 'C'),
(4, 'Emily White', 88, 'B'),
(5, 'Michael Green', 95, 'A');

SELECT * FROM STUDENT;

ALTER TABLE STUDENT
ADD Contact VARCHAR(15);

ALTER TABLE STUDENT
DROP COLUMN Grade;

RENAME TABLE STUDENT TO CLASSTEN;

TRUNCATE TABLE CLASSTEN;


DROP TABLE CLASSTEN;


