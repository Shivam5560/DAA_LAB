show databases;
create database lab5;
use lab5;
show tables;
create table order_items(orderid int , productid int , quantity int , unitprice float);
insert into order_items values(2,1,2,9.10),
								(2,4,4,10),
								(2,6,2,2.54),
								(4,3,10,6.7),
                                (4,3,7,8.9);
select * from order_items;
desc order_items;
create table order_items_notes(noteid int,orderid int,productid int,note int);
desc order_items_notes;
insert into order_items_notes values(1,2,1,19),
									(2,2,1,10);
select * from order_items_notes;
select * from order_items;

select * from order_items as o join order_items_notes as n
on o.orderid=n.orderid and o.productid = n.productid; 
select * from order_items join order_items_notes using(orderid,productid);