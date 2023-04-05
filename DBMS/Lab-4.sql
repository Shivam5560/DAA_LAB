use northwind;
show tables;
desc customers;
select * from customers;
select count(*) as no_of_data from customers;
insert into customers values(92,"Shivam Sourav","ABC","Banka,Bihar","Banka","813102","India");
select count(*) as no_of_rows from customers;
select * from customers order by customerid desc;
insert into customers(customername,city,country) values("ABC","Rangpo","India");
select *  from customers where ContactName is NULL;
update customers set customername="XYZ",city="rangpo" where customerid=1;

select * from customers order by customerid desc;
update customers set contactname="Mukesh Kumar" where country="UK";

delete from customers where  customername="ABC";
select count(*) as no_of_rows_after_deletion from customers;

select * from customers limit 5 ;
select * from customers order by country limit 6;
select * from customers where country="Germany" limit 5;

desc products;
select min(price) as minimum_price from products;

select min(price) as smallest_price,max(price) as biggest_price,avg(price) as average_price,sum(price) as total,count(*) as no_of_rows from products;

select * from products where price<10;
select min(price) as mini from products where price<10;

select * from customers;
select * from customers where customername like 'a%';
select * from customers where customername like '%a';
select * from customers where customername like '%or%';
select * from customers where customername like '_r%';
select * from customers where customername like 'a__%';
select * from customers where customername like 'x%z';

select customerid as id , customername as customer from customers;
desc customers;
select * from customers;
select customername,concat(address,',',postalcode,',',city,',',country) as address from customers;
show tables;
desc orders;
select orders.orderid,orders.orderdate ,customers.customername from orders,customers;
select o.orderid,o.orderdate ,c.customername from orders as o ,customers as c;

select customername,country from customers,orders where customers.customerid=orders.customerid limit 5;
select * from orders where customerid=4;
select * from customers;
select * from customers as c,orders as o where c.customerid=o.customerid and c.customername='Around the horn';
 