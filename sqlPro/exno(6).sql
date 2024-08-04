-- Create the database and use it
CREATE DATABASE ex6;
USE ex6;

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- Insert data into the employees table
INSERT INTO employees (employee_id, first_name, last_name, hire_date, salary) 
VALUES 
    (1, 'rose', 'park', '2020-01-01', 50000.00),
    (2, 'lisa', 'manabonan', '2020-01-01', 50000.00),
    (3, 'jenny', 'kim', '2019-01-01', 50000.00),
    (4, 'jisso', 'kim', '2020-01-01', 50000.00);
SELECT * FROM employees;
DELIMITER $$
CREATE FUNCTION getFullName(firstName VARCHAR(50), lastName VARCHAR(50))
RETURNS VARCHAR(100)
BEGIN
    DECLARE fullName VARCHAR(100);
    SET fullName = CONCAT(firstName, ' ', lastName);
    RETURN fullName;
END$$
DELIMITER ;
DELIMITER //
CREATE PROCEDURE updateEmployeeSalary(IN employeeId INT, IN newSalary DECIMAL(10,2))
BEGIN
    UPDATE employees
    SET salary = newSalary
    WHERE employee_id = employeeId;
END //
DELIMITER ;
SELECT * FROM employees;
CALL updateEmployeeSalary(1, 55000.00);
SELECT * FROM employees;
