-- Create the ex7 database and use it
CREATE DATABASE ex7;
USE ex7;

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
    (4, 'jisso', 'kim', '2019-01-01', 50000.00);

-- Select all from employees to see the inserted data
SELECT * FROM employees;

-- Update the salary of employees hired before 2021-01-01
UPDATE employees 
SET salary = salary * 1.1 
WHERE hire_date < '2021-01-01';	
SELECT * FROM employees;
CREATE DATABASE blackdevil;
USE blackdevil;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT,
    salary INT,
    salary_bankaccount VARCHAR(20)
);
INSERT INTO customer (customer_id, sname, age, salary, salary_bankaccount) 
VALUES 
    (1, 'arayan jain', 51, 56000, 'Sbi'),
    (2, 'arochi dixit', 21, 25000, 'axis'),
    (3, 'vineet garg', 24, 49000, 'hdfc'),
    (4, 'anua sharma', 26, 49000, 'hdfc'),
    (5, 'deepak kohli', 28, 65000, 'sbi');
SELECT * FROM customer;
START TRANSACTION;
SAVEPOINT insertion;
DELETE FROM customer WHERE customer_id = 5;
SELECT * FROM customer;
SAVEPOINT deletion;
ROLLBACK TO insertion;
SELECT * FROM customer;
COMMIT;