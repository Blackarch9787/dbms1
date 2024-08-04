create database ex2;
use ex2;
create table departments(department_id int primary key,department_name varchar(50)not null);
create table employees(employee_id int primary key,employee_name varchar(50)not null,department_id int,salary decimal(10,2),foreign key(department_id)references departments(department_id)on delete restrict on update cascade);
insert into departments(department_id,department_name)values(1,"sales"),(2,"marketing"),(3,"it"),(4,"finance");
select *from departments;
insert into employees(employee_id,employee_name,department_id,salary)
values (1,"john doe",1,50000),(2,"jane doe",2,55000),(3,"jimsmith",3,60000),(4,"sarah johnson",4,65000),
(5,"michale johnson",1,55000),(6,"emily davis",2,52000),(7,"david brown",3,60000),(8,"katie wilson",4,63000),
(9,"william davis",1,55000),(10,"emily wilson",2,53000),(11,"james brown",3,65000);
select *from employees;


