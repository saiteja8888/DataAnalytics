create database pivot;

use pivot;

create table order_table(
orderid int ,
employeeid int ,
vendorid int 
);

insert into order_table values 
(1, 258, 1580),
(2, 254, 1496),
(3, 257, 1494),
(4, 261, 1650),
(5, 251, 1654),
(6, 253, 1664);

select * from order_table ;

select orderid,
if(employeeid = 254,1,NULL) as "254" ,
if(employeeid = 257,1,NULL) as emp257 ,
if(employeeid = 261,1,NULL) as emp261 ,
if(employeeid = 251,1,NULL) as emp251 ,
if(employeeid = 253,1,NULL) as emp253 from 
order_table ;