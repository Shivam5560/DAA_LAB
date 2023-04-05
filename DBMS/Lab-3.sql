show databases;
use northwind;
show tables;
desc customers;
select country from customers;
select distinct country from customers;
select count(distinct country) as unique_values from customers;
select * from customers where country='Mexico';

desc products;
select * from products where price = 18;
select * from products where price>30;
select * from products where price<30;
select * from products where price!=18;
select * from products where price between 5 and 10;

select * from customers where city like "S%";
select * from customers where city in ('Paris','London');

select * from customers where country = 'Germany' or country= 'Spain';
select * from customers where country = 'Germany' and customerID<10;
select * from customers where country = 'Germany' or city='london';

select count(*) from customers where country='Germany';
select * from customers where not country='Germany';

desc employees;
select * from employees;
select * from employees where year(BirthDate)>'1960';

select * from customers order by country;
select * from customers order by country desc;

select * from Customers where country='Germany' order by city desc;

select * from Customers order by country desc ,City asc;

-- select count(*) as no_of_rows into @total from customers;
-- select CustomerID,CustomerName,length(CustomerName) as name_length from customers;
