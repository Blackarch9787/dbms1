create database blackdevil;
use blackdevil;
create table students(id integer primary key,sname text not null,age integer check(age>=18),
email varchar(255) unique,gender char(10) not null);
insert into students(id,sname,age,email,gender) values 
(1,"prakash",20,"prakash@gmail.com",'male'),
(2,"rose",22,"rose@gmail.com","female");
select *from students;
update students
set age=23 where id=2;
select *from students;
