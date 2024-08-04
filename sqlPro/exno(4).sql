create database ex4;
use ex4;
create table departments(department_id int primary key,department_name varchar(50)not null);
create table employees(employee_id int primary key,employee_name varchar(50)not null,department_id int,salary decimal(10,2),foreign key(department_id)references departments(department_id)on delete restrict on update cascade);
insert into departments(department_id,department_name)values(1,"sales"),(2,"marketing"),(3,"it"),(4,"finance");
select *from departments;
insert into employees(employee_id,employee_name,department_id,salary)
values (1,"john doe",1,50000),(2,"jane doe",2,55000),(3,"jimsmith",3,60000);
select *from employees;
select *from employees where salary>55000;
select employees.employee_name, departments.department_name from employees join departments on employees.department_id = departments.department_id;
select avg(salary) from (select salary from employees) as emp_salary;
select employees.employee_name, departments.department_name, employees.salary from employees join departments on employees.department_id = departments.department_id;
