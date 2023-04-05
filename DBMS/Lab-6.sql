use northwind;
show tables;
/* list the no of customers in each country , only includes country with more than 5 customers */
select country,count(*) from customers group by country order by country;
select country,count(*) as no_of_customers from customers group by country 
	having no_of_customers>=5 order by no_of_customers desc;

/* list the employees that have registered more than 10 orders  */
select * from employees  join orders using(employeeid);

select firstname,lastname,count(o.orderid) as noo 
from employees as e join orders as o 
using(employeeid)
group by employeeid having noo>10 ;

/* list if the employees davolio or fuller have registered more than 25 orders */
select firstname,lastname,count(o.orderid) as noo 
from employees as e join orders as o 
using(employeeid) 
group by employeeid 
having noo>25 and e.lastname in('davolio','fuller') ;

-- select into
-- create a backup copy of customers
show databases;
show tables;
CREATE TABLE backup SELECT * FROM customers;
select * from backup;

create table orders_backup select * from orders;
select * from orders_backup;
create table lab2.orders_backup select * from orders;


/* SQL CASE EXPRESSION */
select orderid,quantity,case 
when quantity>30 then 'Quantity is greater than 30'
when quantity=30 then 'Quantity is equal to 30'
else 'Quantity is less than 30'
end result
from orderdetails;

-- show the customername,city,country order by city , if city's value is null then country 
select customername,city,country,case
when city is NULL then country
else city
end result
from customers;

