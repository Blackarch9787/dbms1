create database ex5;
use ex5;
create table customers(id int primary key,sname varchar(50),email varchar(50));
create table orders(id int primary key,customer_id int,product varchar(50),price decimal(10,2),constraint fk_customer foreign key(customer_id)references customers(id));
insert into customers(id,sname,email)values 
(1,"prakash","prakash@gmail.com"),(2,"john","john@gmail.com"),(3,'bob johnson','bob johnson@gmail.com');
select *from customers;
insert into orders(id,customer_id,product,price) values (1,1,"widget",10.00),(2,2,"gizmo",15.00),(3,1,"thin",20.00),(4,3,"widget",10.00);
select *from orders;
select *from customers natural join orders;
select *from customers join orders on customers.id=orders.customer_id;
select *from orders right outer join customers on orders.customer_id=customer_id;
select *from customers left outer join orders on customers.id=orders.customer_id;

