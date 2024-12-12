CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(100),
    experience INT,
    salary DECIMAL(10, 2)
);

INSERT INTO teachers (id, name, subject, experience, salary) VALUES
(1, 'John Doe', 'Mathematics', 5, 50000.00),
(2, 'Jane Smith', 'English', 12, 55000.00),
(3, 'Emily Davis', 'Science', 7, 45000.00),
(4, 'Michael Brown', 'History', 15, 60000.00),
(5, 'Sarah Wilson', 'Geography', 8, 48000.00),
(6, 'David Clark', 'Computer Science', 6, 52000.00),
(7, 'Laura Lee', 'Physics', 10, 53000.00),
(8, 'James White', 'Chemistry', 3, 47000.00);


DELIMITER $$

CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END $$

DELIMITER ;


CREATE TABLE teacher_log (
    teacher_id INT,
    action VARCHAR(50),
    timestamp TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete teacher with more than 10 years of experience';
    END IF;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END $$

DELIMITER ;
