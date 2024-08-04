create database ex8;
use ex8;
create table employees(id int primary key, sname varchar(50),department varchar(50),salary int);
create table employee_audit(id int primary key auto_increment,action varchar(50),action_date timestamp);
DELIMITER //
CREATE TRIGGER insert_employee
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
 INSERT INTO employee_audit (id, action, action_date)
 VALUES (NEW.id, 'insert', NOW());
END//
CREATE TRIGGER delete_employee
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO employee_audit (id, action, action_date)
 VALUES (OLD.id, 'delete', NOW());
END//
CREATE TRIGGER update_employee
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO employee_audit (id, action, action_date)
 VALUES (NEW.id, 'update', NOW());
END//
DELIMITER ;
INSERT INTO employees (id, sname, department, salary) VALUES
(1, 'John Smith', 'Sales', 50000),
(2, 'Jane Doe', 'Marketing', 60000),
(3, 'Bob Johnson', 'HR', 55000),
(4, 'Sarah Lee', 'IT', 65000),
(5, 'PRAKASH SN', 'Finance', 70000);
SELECT*FROM EMPLOYEES;
SELECT*FROM EMPLOYEE_AUDIT;





