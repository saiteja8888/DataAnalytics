#Class 4 - 38minutes

create database sales;

show DATABASES;

use sales;

#automate table creation
#import csvkit
#execute below code in Amaconda prompt
#csvsql --dialect mysql --snifflimit 100000 2.3_sales_data_final.csv > 2.4output_sales.sql

CREATE TABLE sales1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);

SET GLOBAL local_infile = true;
SET SESSION sql_mode = '';

LOAD DATA local INFILE '/config/workspace/sales_data_final.csv'
into table sales1
FIELDS terminated by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 rows;

select * from sales1;

select count(*) from sales1;

select str_to_date(order_date, '%m/%d/%y') from sales1;

alter table sales1 
ADD COLUMN order_date_new date after order_date;

select * from sales1 limit 10;

update sales1
set order_date_new = str_to_date(order_date, '%m/%d/%Y');

select * from sales1 limit 10;

alter table sales1
add column ship_date_new date after ship_date;

update sales1
set ship_date_new = str_to_date(ship_date,'%m/%d/%Y');

select * from sales1 limit 10;

alter table sales1
drop column order_date;

alter table sales1
drop column ship_date;

select * from sales1 limit 10;

alter Table sales1
RENAME column order_date_new to order_date;

alter table sales1
rename column ship_date_new to ship_date;

select * from sales1 limit 10;

select * from sales1 where ship_date = '2011-01-05';

select * from sales1 where ship_date > '2011-01-05';


select * from sales1 where ship_date < '2011-01-05';

select * from sales1 where ship_date between '2011-01-05' and '2011-01-08';

select now();

select curdate();

select curtime();

select * from sales1 where ship_date < date_sub(now(), interval 1 week);

select date_sub(now(), interval 1 week);

select date_sub(now(), interval 3 day);

select date(now());

select year(now());

select dayname(now());

alter table sales1
add column flag date after order_id;

update sales1
set flag=now();

select * from sales1 limit 10;

alter table sales1
modify COLUMN `year` date;

select * from sales1 limit 10;

alter table sales1
add column year_new int after order_id;

alter table sales1
add column month_new int after order_id;

alter table sales1
add column day_new int after order_id;

select * from sales1 limit 10;

update sales1
set year_new = year(order_date);

update sales1
set month_new = month(order_date);

update sales1
set day_new = day(order_date);

select * from sales1 limit 10;

select year_new, avg(sales) from sales1 group by year_new;

select year_new, sum(sales) from sales1 group by year_new;

select year_new, min(sales) from sales1 group by year_new;

select year_new, max(sales) from sales1 group by year_new;

select year_new, sum(quantity) from sales1 group by year_new;

select discount, shipping_cost, (sales*(discount/100)+shipping_cost) as CTC from sales1; 

select order_id, if(discount >0, 'No', 'Yes') as discount_flag from sales1;


alter TABLE sales1
add column discount_flag varchar(10) after discount;

update sales1
set discount_flag = if(discount>0, 'yes','No');

select * from sales1 limit 10;

select discount_flag, count(quantity) as total_count from sales1 group by discount_flag;

select count(*) from sales1 where discount>0;

select count(*) from sales1 where discount=0;


# task:
# upload bulk data 
#select * from fsds.glassdata

