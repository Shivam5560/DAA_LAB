create database lab2;
show databases;
use lab2;
create table employee_details (name varchar(20) , age int , sex char(1) , doj date , city varchar(15) , salary float);
desc employee_details;
insert into employee_details values("Shivam",19,'M',"2003-05-28","Banka",50000);
insert into employee_details values("Ram",20,"M","2005-06-09","Banka",40000),
									("Shyam",25,"M","1992-07-25","Rangpo",80000);
select * from employee_details;
alter table employee_details add (designation varchar(25));
desc employee_details;
update employee_details set age=30 where age=25;
update employee_details set designation="Data-Scientist" where name like "S%";
update employee_details set designation="Data-Analyst",age=17 where name="Ram";
alter table employee_details rename column age to employee_age;
delete from employee_details where name ="Shyam";