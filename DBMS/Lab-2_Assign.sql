/*create a table called customer_table(customer_name varchar,customer_street,customer_city,customer_mobile_no)
insert 5 records 
add salary column to the table
drop salary column
delete the rows where city=='hyderabad'
*/
show databases;
use lab2;
create table customer_table(customer_name varchar(20),customer_street varchar(30),customer_city varchar(15),customer_mobile_no varchar(10));
desc customer_table;
insert into customer_table values("Shivam","JD-Street","Banka","1234567890"),
								("Sourav","AB-Street","Hyderabad","9988776655"),
                                ("Aman","CD-Street","Hyderabad","1234567899"),
                                ("Jitam","Park-Street","Rangpo","8901235678"),
                                ("Dev","GG-Street","Guwahati","3456789000");
select * from customer_table;
alter table customer_table add column(salary float);
desc customer_table;
delete from customer_table where customer_city="Hyderabad";
alter table customer_table drop column salary;


create table Department_Table(department_no int , deapartment_name varchar(20),location varchar(20));
desc Department_Table;
alter table Department_Table add column(Designation varchar(20));
insert into Department_Table values(1,"AI&DS","F","ABC"),(2,"CSE","C","DEF"),(3,"BCA","A","XYZ"),(4,"MBA","A","YXC"),(5,"ME","F","ABC");
select * from Department_Table;
alter table Department_Table drop column Designation;