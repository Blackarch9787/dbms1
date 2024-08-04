create database ex3;
use ex3;
create table departments(department_id int primary key,department_name varchar(50)not null);
create table employee1(employee_id int primary key,employee_name varchar(50)not null,department_id int,salary decimal(10,2),foreign key(department_id)references departments(department_id)on delete restrict on update cascade);
insert into departments(department_id,department_name)values(1,"sales"),(2,"marketing"),(3,"it"),(4,"finance");
select *from departments;
insert into employee1(employee_id,employee_name,department_id,salary)
values (1,"john doe",1,50000),(2,"jane doe",2,55000),(3,"jimsmith",3,60000),(4,"sarah johnson",4,65000),
(5,"michale johnson",1,55000);
select *from employee1;
select *from employee1 where department_id=1;
select employee1.employee_name,departments.department_name from employee1 join departments on employee1.department_id=departments.department_id;
select departments.department_name, avg(salary) from employee1 join departments on employee1.department_id = departments.department_id group by departments.department_name;
