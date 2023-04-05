use northwind;

					-- Create a sql procedure
delimiter //
create procedure use1() begin select * from customers; end// 
delimiter ;

					-- execute a sql procedure
call use1();



-- create a sql procedure having arguments
delimiter //
create procedure demo(s varchar(20)) begin select * from customers where customername=s; end //
delimiter ;
-- calling a sql procedure having arguments
call demo('XYZ');





delimiter //
create procedure demo1 (c varchar(20)) begin select * from customers where city=c; end//
delimiter ;

call dem('madrid');

use lab5;
create table demo(reg_no int,name varchar(20) not null,subject varchar(20),marks int);
desc demo;
insert into demo values(1,'shivam','maths',30);
select * from demo;

-- Error Code: 1364. Field 'name' doesn't have a default value
insert into demo(reg_no) values(2);

insert into demo(name) values('lakshit');
select * from demo;

create table up
(reg_no int,name varchar(20) not null,subject varchar(20),marks int,dept varchar(10),
email_id varchar(30) unique not null);
desc up;
insert into up values(1,'gg','maths',90,'ai&ds','s@1');
insert into up values(2,'s','m',90,'ai&ds','s@1');
select * from up;

create table down
(reg_no int,name varchar(20) not null,subject varchar(20),marks int,dept varchar(10),
email_id varchar(30) primary key);
desc down;
insert into down values(1,'gg','maths',90,'ai&ds','s@1');
insert into down values(2,'s','m',90,'ai&ds','s@1');
select * from down;

create table pro(proid int,brandname varchar(18),manufacturer varchar(20),primary key(brandname,manufacturer));
desc pro;
insert into pro values(101,'Soap','H'),
						(103,'Shampoo','Head'),
						(103,'Soap','lux');
select * from pro;
insert into pro values(104,'Shampoo','lux');



create table Student
(reg_no int,student_name varchar(20),subject varchar(20),marks int,dept varchar(10),
email_id varchar(30),constraint studentemail unique(student_name,email_id));
desc Student;
select * from Student;
show index from Student;

create table Student1
(reg_no int,student_name varchar(20),subject varchar(20),marks int,dept varchar(10),
email_id varchar(30),constraint studentemailpri primary key(student_name,email_id));
desc Student1;
show index from Student1;


-- Foreign Key 
create table a(email_id varchar(30) primary key);
create table Student2(regno int,email varchar(30) ,foreign key (email) references a(email_id));
desc student2;
