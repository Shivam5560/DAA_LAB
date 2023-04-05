show databases;
use northwind;
desc customers;
desc orders;
select * from customers as c ,orders as o where c.customerid = o.customerid;
select c.customername,o.orderid,o.orderdate from customers as c ,orders as o where c.customerid = o.customerid order by c.customername;
select count(customerid) as count from customers;
select count(*) from customers as c,orders as o where c.customerid = o.customerid;
select count(customerid) from orders;
select count(distinct customerid) from orders;

select * from customers as c ,orders as o order by c.customername;
select count(*) from customers as c ,orders as o order by c.customername;

/* join */
select * from customers join orders on customers.customerid = orders.customerid;
select count(*) from customers join orders on customers.customerid = orders.customerid;
select customername,country,orderid from customers join orders on customers.customerid = orders.customerid;
select customername,country,orderid from customers inner join orders on customers.customerid = orders.customerid;

/* JOIN 3 TABLES BASED ON CONDITION */
select customername,country,orderid,shippername
from customers  join orders on customers.customerid = orders.customerid
join shippers on shippers.shipperid=orders.shipperid;

select * from customers left join orders on customers.customerid = orders.customerid;
select * from customers right join orders on customers.customerid = orders.customerid;

/* validation */
select * from customers left join orders on customers.customerid = orders.customerid
		where orders.orderid is NULL;
select * from customers right join orders on customers.customerid = orders.customerid
		where customers.customername is NULL;
        
select * from customers natural join orders;
select count(*) from customers cross join orders;
select * from customers join orders using(customerid);

select customername from customers union select firstname from employees;
select customername,country,customerid from customers where country in ('Germany','USA');