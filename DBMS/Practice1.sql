show databases;
use lab2;
show tables;
create table practice(a bit(4),outcome boolean,variable enum('S','A','B'),language set('C++','Java','Python','Mysql'));
desc practice;
insert into practice values(b'111',true,1,14);
insert into practice values(b'101',false,2,3);
select * from practice;
alter table practice add(d decimal(2) , flo float , doub double);
desc practice;
insert into practice values(b'110',true,3,12,23,1.2,22.3);
alter table practice drop column doub;
alter table practice add column doub double;

insert into practice(flo,doub) values(1.234567879123456789123456789,1.234567879123456789123456789);
alter table practice add column ctr int;
insert into practice ( ctr ) values(123456789);
insert into practice ( flo ) values (1.23456789);
desc practice;
insert into practice ( doub ) values (1111.234567879123456789123456789);
select * from practice;
alter table practice add flo2 float;
update practice set flo2=1.2 where a=7;

select flo + flo2 as float_sum from practice where a=7;
desc practice;

alter table practice add str varchar(255);
select bit_count(21474836412);
create table data(var float);
desc data;
insert into data values(12345444);
select * from data;