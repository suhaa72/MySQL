DELIMITER $$

CREATE PROCEDURE AddWorker(
    IN p_Worker_Id INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END$$

DELIMITER ;

-- Procedure call:
CALL AddWorker(1, 'John', 'Doe', 50000, '2024-12-09 10:00:00', 'Engineering');


DELIMITER $$

CREATE PROCEDURE GetSalaryByWorkerId(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary
    FROM Worker
    WHERE Worker_Id = p_Worker_Id;
END$$

DELIMITER ;

-- Procedure call:
SET @salary = 0;
CALL GetSalaryByWorkerId(1, @salary);
SELECT @salary AS WorkerSalary;


DELIMITER $$

CREATE PROCEDURE UpdateWorkerDepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
END$$

DELIMITER ;

-- Procedure call:
CALL UpdateWorkerDepartment(1, 'Marketing');


DELIMITER $$

CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount
    FROM Worker
    WHERE Department = p_Department;
END$$

DELIMITER ;

-- Procedure call:
SET @workerCount = 0;
CALL GetWorkerCountByDepartment('Engineering', @workerCount);
SELECT @workerCount AS WorkerCount;


DELIMITER $$

CREATE PROCEDURE GetAvgSalaryByDepartment(
    IN p_Department CHAR(25),
    OUT p_AvgSalary DECIMAL(10,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_AvgSalary
    FROM Worker
    WHERE Department = p_Department;
END$$

DELIMITER ;

-- Procedure call:
SET @avgSalary = 0;
CALL GetAvgSalaryByDepartment('Engineering', @avgSalary);
SELECT @avgSalary AS AvgSalary;
