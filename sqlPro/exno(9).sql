create database ex9;
use ex9;
create table users(id int primary key,sname varchar (50),email varchar(100));
insert into users(id,sname,email)values (1,'john smith','john@email.com'),(2,'jane doe','jane@gmail.com'),(3,'bob johnson','bob@gmail.com'),(4,'marry willians','mary@gmail.com');
create view users_email as select sname,email from users;
create index email_index on users(email);
select*from users_email;
select*from users where email='john@email.com';
