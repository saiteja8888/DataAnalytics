-- Active: 1689492225009@@127.0.0.1@3306
-- Run this entire code to create databases and tables
CREATE DATABASE ineuron_fsda;

CREATE DATABASE IF NOT EXISTS ineuron_fsda;

use ineuron_fsda;

CREATE TABLE IF NOT EXISTS bank_details(
	age INT,
    job VARCHAR(30),
    marital VARCHAR(30),
    education VARCHAR(30),
    `default` VARCHAR(30),
    balance INT,
    housing VARCHAR(30),
    loan VARCHAR(30),
    contact VARCHAR(30),
    `day` INT,
    `month` VARCHAR(30),
    duration INT,
    campaign INT,
    pdays INT,
    previous INT,
    poutcome VARCHAR(30),
    y VARCHAR(30)
);

insert into bank_details values(
58,"management","married","tertiary","no",2143,"yes","no","unknown",5,"may",261,1,-1,0,"unknown","no"
);

insert into bank_details values
    (44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
    (33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
    (47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
    (33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
    (35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
    (28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
    (42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
    (58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
    (43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
    (41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
    (29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
    (53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
    (58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
    (57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
    (51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
    (45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
    (57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
    (60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no"),
    (33,"services","married","secondary","no",0,"yes","no","unknown",5,"may",54,1,-1,0,"unknown","no"),
    (28,"blue-collar","married","secondary","no",723,"yes","yes","unknown",5,"may",262,1,-1,0,"unknown","no"),
    (56,"management","married","tertiary","no",779,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
    (32,"blue-collar","single","primary","no",23,"yes","yes","unknown",5,"may",160,1,-1,0,"unknown","no"),
    (25,"services","married","secondary","no",50,"yes","no","unknown",5,"may",342,1,-1,0,"unknown","no"),
    (40,"retired","married","primary","no",0,"yes","yes","unknown",5,"may",181,1,-1,0,"unknown","no"),
    (44,"admin.","married","secondary","no",-372,"yes","no","unknown",5,"may",172,1,-1,0,"unknown","no"),
    (39,"management","single","tertiary","no",255,"yes","no","unknown",5,"may",296,1,-1,0,"unknown","no"),
    (52,"entrepreneur","married","secondary","no",113,"yes","yes","unknown",5,"may",127,1,-1,0,"unknown","no"),
    (46,"management","single","secondary","no",-246,"yes","no","unknown",5,"may",255,2,-1,0,"unknown","no"),
    (36,"technician","single","secondary","no",265,"yes","yes","unknown",5,"may",348,1,-1,0,"unknown","no"),
    (57,"technician","married","secondary","no",839,"no","yes","unknown",5,"may",225,1,-1,0,"unknown","no"),
    (49,"management","married","tertiary","no",378,"yes","no","unknown",5,"may",230,1,-1,0,"unknown","no"),
    (60,"admin.","married","secondary","no",39,"yes","yes","unknown",5,"may",208,1,-1,0,"unknown","no"),
    (59,"blue-collar","married","secondary","no",0,"yes","no","unknown",5,"may",226,1,-1,0,"unknown","no"),
    (51,"management","married","tertiary","no",10635,"yes","no","unknown",5,"may",336,1,-1,0,"unknown","no"),
    (57,"technician","divorced","secondary","no",63,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
    (25,"blue-collar","married","secondary","no",-7,"yes","no","unknown",5,"may",365,1,-1,0,"unknown","no"),
    (53,"technician","married","secondary","no",-3,"no","no","unknown",5,"may",1666,1,-1,0,"unknown","no"),
    (36,"admin.","divorced","secondary","no",506,"yes","no","unknown",5,"may",577,1,-1,0,"unknown","no"),
    (37,"admin.","single","secondary","no",0,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
    (44,"services","divorced","secondary","no",2586,"yes","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
    (50,"management","married","secondary","no",49,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
    (60,"blue-collar","married","unknown","no",104,"yes","no","unknown",5,"may",22,1,-1,0,"unknown","no"),
    (54,"retired","married","secondary","no",529,"yes","no","unknown",5,"may",1492,1,-1,0,"unknown","no"),
    (58,"retired","married","unknown","no",96,"yes","no","unknown",5,"may",616,1,-1,0,"unknown","no"),
    (36,"admin.","single","primary","no",-171,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
    (58,"self-employed","married","tertiary","no",-364,"yes","no","unknown",5,"may",355,1,-1,0,"unknown","no"),
    (44,"technician","married","secondary","no",0,"yes","no","unknown",5,"may",225,2,-1,0,"unknown","no"),
    (55,"technician","divorced","secondary","no",0,"no","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
    (29,"management","single","tertiary","no",0,"yes","no","unknown",5,"may",363,1,-1,0,"unknown","no"),
    (54,"blue-collar","married","secondary","no",1291,"yes","no","unknown",5,"may",266,1,-1,0,"unknown","no"),
    (48,"management","divorced","tertiary","no",-244,"yes","no","unknown",5,"may",253,1,-1,0,"unknown","no"),
    (32,"management","married","tertiary","no",0,"yes","no","unknown",5,"may",179,1,-1,0,"unknown","no"),
    (42,"admin.","single","secondary","no",-76,"yes","no","unknown",5,"may",787,1,-1,0,"unknown","no"),
    (24,"technician","single","secondary","no",-103,"yes","yes","unknown",5,"may",145,1,-1,0,"unknown","no"),
    (38,"entrepreneur","single","tertiary","no",243,"no","yes","unknown",5,"may",174,1,-1,0,"unknown","no"),
    (38,"management","single","tertiary","no",424,"yes","no","unknown",5,"may",104,1,-1,0,"unknown","no"),
    (47,"blue-collar","married","unknown","no",306,"yes","no","unknown",5,"may",13,1,-1,0,"unknown","no"),
    (40,"blue-collar","single","unknown","no",24,"yes","no","unknown",5,"may",185,1,-1,0,"unknown","no"),
    (46,"services","married","primary","no",179,"yes","no","unknown",5,"may",1778,1,-1,0,"unknown","no"),
    (32,"admin.","married","tertiary","no",0,"yes","no","unknown",5,"may",138,1,-1,0,"unknown","no"),
    (53,"technician","divorced","secondary","no",989,"yes","no","unknown",5,"may",812,1,-1,0,"unknown","no"),
    (57,"blue-collar","married","primary","no",249,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
    (33,"services","married","secondary","no",790,"yes","no","unknown",5,"may",391,1,-1,0,"unknown","no"),
    (49,"blue-collar","married","unknown","no",154,"yes","no","unknown",5,"may",357,1,-1,0,"unknown","no"),
    (51,"management","married","tertiary","no",6530,"yes","no","unknown",5,"may",91,1,-1,0,"unknown","no"),
    (60,"retired","married","tertiary","no",100,"no","no","unknown",5,"may",528,1,-1,0,"unknown","no"),
    (59,"management","divorced","tertiary","no",59,"yes","no","unknown",5,"may",273,1,-1,0,"unknown","no"),
    (55,"technician","married","secondary","no",1205,"yes","no","unknown",5,"may",158,2,-1,0,"unknown","no"),
    (35,"blue-collar","single","secondary","no",12223,"yes","yes","unknown",5,"may",177,1,-1,0,"unknown","no"),
    (57,"blue-collar","married","secondary","no",5935,"yes","yes","unknown",5,"may",258,1,-1,0,"unknown","no"),
    (31,"services","married","secondary","no",25,"yes","yes","unknown",5,"may",172,1,-1,0,"unknown","no"),
    (54,"management","married","secondary","no",282,"yes","yes","unknown",5,"may",154,1,-1,0,"unknown","no"),
    (55,"blue-collar","married","primary","no",23,"yes","no","unknown",5,"may",291,1,-1,0,"unknown","no"),
    (43,"technician","married","secondary","no",1937,"yes","no","unknown",5,"may",181,1,-1,0,"unknown","no"),
    (53,"technician","married","secondary","no",384,"yes","no","unknown",5,"may",176,1,-1,0,"unknown","no"),
    (44,"blue-collar","married","secondary","no",582,"no","yes","unknown",5,"may",211,1,-1,0,"unknown","no"),
    (55,"services","divorced","secondary","no",91,"no","no","unknown",5,"may",349,1,-1,0,"unknown","no"),
    (49,"services","divorced","secondary","no",0,"yes","yes","unknown",5,"may",272,1,-1,0,"unknown","no"),
    (55,"services","divorced","secondary","yes",1,"yes","no","unknown",5,"may",208,1,-1,0,"unknown","no"),
    (45,"admin.","single","secondary","no",206,"yes","no","unknown",5,"may",193,1,-1,0,"unknown","no"),
    (47,"services","divorced","secondary","no",164,"no","no","unknown",5,"may",212,1,-1,0,"unknown","no"),
    (42,"technician","single","secondary","no",690,"yes","no","unknown",5,"may",20,1,-1,0,"unknown","no"),
    (59,"admin.","married","secondary","no",2343,"yes","no","unknown",5,"may",1042,1,-1,0,"unknown","yes"),
    (46,"self-employed","married","tertiary","no",137,"yes","yes","unknown",5,"may",246,1,-1,0,"unknown","no"),
    (51,"blue-collar","married","primary","no",173,"yes","no","unknown",5,"may",529,2,-1,0,"unknown","no"),
    (56,"admin.","married","secondary","no",45,"no","no","unknown",5,"may",1467,1,-1,0,"unknown","yes"),
    (41,"technician","married","secondary","no",1270,"yes","no","unknown",5,"may",1389,1,-1,0,"unknown","yes"),
    (46,"management","divorced","secondary","no",16,"yes","yes","unknown",5,"may",188,2,-1,0,"unknown","no"),
    (57,"retired","married","secondary","no",486,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
    (42,"management","single","secondary","no",50,"no","no","unknown",5,"may",48,1,-1,0,"unknown","no"),
    (30,"technician","married","secondary","no",152,"yes","yes","unknown",5,"may",213,2,-1,0,"unknown","no"),
    (60,"admin.","married","secondary","no",290,"yes","no","unknown",5,"may",583,1,-1,0,"unknown","no");
 
 DELIMITER &&
	CREATE PROCEDURE select_rec()
    BEGIN
    select * from bank_details;
    END &&

DELIMITER &&
	CREATE PROCEDURE select_max()
    BEGIN
    select * from bank_details where balance in (
    select max(balance) from bank_details);
    END &&

DELIMITER &&
	CREATE PROCEDURE avg_bal_jobrole()
    BEGIN
    select avg(balance) from bank_details where job='admin.';
    END &&

DELIMITER &&
	CREATE PROCEDURE avg_bal_job(IN jobrole varchar(30))
    BEGIN
    select avg(balance) from bank_details where job=jobrole;
    END &&

DELIMITER &&
	CREATE PROCEDURE select_edu_job()
    BEGIN
    select * from bank_details where education="primary" and job="unknown";
    END &&

DELIMITER &&
	CREATE PROCEDURE select_edujob(IN edu varchar(30), IN job varchar(30))
    BEGIN
    select * from bank_details where education=edu and job=job;
    END &&

CREATE view bank_view as 
select age, job, marital, balance, education, loan, housing 
from bank_details;

create database dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30));

SET GLOBAL local_infile = true;

LOAD DATA local INFILE '/config/workspace/MySQL/1.2_AttributeDataSet.csv'
into table dress
FIELDS  terminated by ','
ENCLOSED by '"'
LINES terminated by '\n'
IGNORE 1 rows;

Create table if not exists test(
	test_id int auto_increment,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    primary key(test_id));

insert into test values
(1,"sudhanshu","sudh@gmail.com","bangalore"),
(2,"krish","krish@gmail.com","bangalore"),
(3,"hitest","hitesh@gmail.com","bangalore"),
(4,"shubam","shubam@gmail.com","jaipur");

create table if not exists test2(
	test_id int not null auto_increment,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    primary key(test_id));

insert into test2 (test_name,test_mailid, test_address) values
("sudhanshu","sudh@gmail.com","bangalore"),
("krish","krish@gmail.com","bangalore"),
("hitest","hitesh@gmail.com","bangalore"),
("shubam","shubam@gmail.com","jaipur");

insert into test2 (test_name,test_mailid, test_address) values
	("sudhanshu","sudh@gmail.com","bangalore"),
	("krish","krish@gmail.com","bangalore"),
	("hitest","hitesh@gmail.com","bangalore"),
	("shubam","shubam@gmail.com","jaipur");

create table if not exists test3(
	test_id int,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    test_salary int check(test_salary>10000));
    
insert into test3  values
	(1,"sudhanshu","sudh@gmail.com","bangalore",20000),
	(2,"krish","krish@gmail.com","bangalore",50000),
	(3,"hitest","hitesh@gmail.com","bangalore",100000),
	(4,"shubam","shubam@gmail.com","jaipur",20000);

alter table test3 add constraint check(test_id>0);    

insert into test3  values
	(10,"sudhanshu","sudh@gmail.com","bangalore",20000); 
    
create table if not exists test4(
	test_id int,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30) check(test_address="bangalore"),
    test_salary int);
    
insert into test4  values
	(1,"sudhanshu","sudh@gmail.com","bangalore",20000);

create table if not exists test5(
	test_id int not null,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30) check(test_address="bangalore"),
    test_salary int);

insert into test5(test_id,test_name,test_mailid,test_address,test_salary) values
(1,"shubam","shubam@gmail.com","bangalore",20000);

create table if not exists test6(
	test_id int not null default 0,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30) check(test_address="bangalore"),
    test_salary int);
    
insert into test6(test_name,test_mailid,test_address,test_salary) values
("shubam","shubam@gmail.com","bangalore",20000);

create table if not exists test7(
	test_id int not null default 0,
    test_name varchar(30),
    test_emailid varchar(30) unique,
    test_address varchar(30) check(test_address='bangalore'),
    test_salary int);
    
insert into test7(test_name,test_emailid,test_address,test_salary) values
("shubam","shubam@gmail.com","bangalore",20000);

create table if not exists test8(
	test_id int not null auto_increment,
    test_name varchar(30) not null default "unknown",
    test_mailid varchar(30) unique not null,
    test_address varchar(30) check(test_address="bangalore"),
    test_salary varchar(30),
    primary key(test_id));
    
insert into test8(test_id, test_name, test_mailid, test_address, test_salary) values
(100,"shubam1","shubam3@gmail.com","bangalore",20000);

insert into test8(test_name, test_mailid, test_address, test_salary) values
("shubam1","shubam@gmail.com","bangalore",20000);

insert into test8(test_name, test_mailid, test_address, test_salary) values
("shubam1","shubam5@gmail.com","bangalore",20000);

create database sales;

use sales;

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

LOAD DATA local INFILE '/config/workspace/MySQL/2.3_sales_data_final.csv'
into table sales1
FIELDS terminated by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 rows;

alter table sales1 
ADD COLUMN order_date_new date after order_date;

update sales1
set order_date_new = str_to_date(order_date, '%m/%d/%Y');

alter table sales1
add column ship_date_new date after ship_date;

update sales1
set ship_date_new = str_to_date(ship_date,'%m/%d/%Y');

alter table sales1
drop column order_date;

alter table sales1
drop column ship_date;

alter Table sales1
RENAME column order_date_new to order_date;

alter table sales1
rename column ship_date_new to ship_date;

alter table sales1
add column flag date after order_id;

update sales1
set flag=now();

alter table sales1
modify COLUMN `year` date;

alter table sales1
add column year_new int after order_id;

alter table sales1
add column month_new int after order_id;

alter table sales1
add column day_new int after order_id;

update sales1
set year_new = year(order_date);

update sales1
set month_new = month(order_date);

update sales1
set day_new = day(order_date);

alter TABLE sales1
add column discount_flag varchar(10) after discount;

update sales1
set discount_flag = if(discount>0, 'yes','No');

set global max_allowed_packet = 209715200;

use sales;

DELIMITER $$
CREATE FUNCTION add_to_col(a INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE b INT;
    SET b = a+10;
    return b;
END $$

DELIMITER $$
CREATE FUNCTION final_profit(
    profit INT, discount INT
) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE final_profit INT;
    SET final_profit = profit-discount;
    return final_profit;
END $$

DELIMITER $$
CREATE FUNCTION final_profit_real(
    profit DECIMAL(20,6),
    discount DECIMAL(20,6),
    sales DECIMAL(20,6)
) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE final_profit INT;
    SET final_profit = profit-sales*discount;
    RETURN final_profit;
END $$

DELIMITER $$
CREATE FUNCTION int_varchar(
    a INT
) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    DECLARE b VARCHAR(30);
    SET b=a;
    return b;
END $$

DELIMITER $$
CREATE FUNCTION mark_sales(
    sales INT
) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    DECLARE flag_sales VARCHAR(30);
    IF sales < 100 then 
        SET flag_sales='super affordable product';
    ELSEIF sales <300 THEN
        SET flag_sales='affordable';
    ELSEIF sales <600 THEN
        SET flag_sales="modarate price";
    ELSE SET flag_sales="expensive";
    END IF;
    return flag_sales;
END $$

alter table sales1
add COLUMN marksales varchar(30);

update sales1
set marksales=mark_sales(sales);

create table loop_table(val int);

Delimiter $$
create procedure insert_data()
Begin
set @var  = 10 ;
generate_data : loop
insert into loop_table values (@var);
set @var = @var + 1  ;
if @var  = 100 then 
	leave generate_data;
end if ;
end loop generate_data;
End $$

create table sqr(
    num INT,
    num_sqr INT
);

DELIMITER $$
CREATE PROCEDURE sqr_num()
BEGIN
SET @a=1;
sqr : loop
INSERT INTO sales.sqr values (@a,@a*@a);
SET @a = @a + 1;
IF @a = 11 then leave sqr ;
END IF;
END Loop sqr;
END $$ 

create database key_prim;
use key_prim;

create table ineuron(
    course_id int NOT NULL,
    course_name varchar(60),
    course_status varchar(40),
    number_of_enro int,
    primary key(course_id)
);

insert into ineuron values(01,'FSDA','active',100);
insert into ineuron values(02,'FSDA','not-active',100);

create table stu_ineuron(
    student_id int,
    course_name varchar(60),
    student_mail varchar(60),
    student_status varchar(60),
    course_id1 int,
    Foreign Key (course_id1) REFERENCES ineuron(course_id)
);

insert into stu_ineuron values(101,'fsda','test@gmail.com','active',01);
insert into stu_ineuron values(101,'fsda','test@gmail.com','active',01);
insert into stu_ineuron values(101,'fsda','test@gmail.com','active',01);

create table payment(
    course_name varchar(60),
    course_id int,
    course_live_status varchar(60),
    course_launch_date varchar(60),
    Foreign Key (course_id) REFERENCES ineuron(course_id)
);

insert into payment values('fsda',01,'not-active','7th aug');
insert into payment values('fsda',01,'not-active','7th aug');
insert into payment values('fsda',01,'not-active','7th aug');

create table class(
    course_id int,
    class_name varchar(60),
    class_topic varchar(60),
    class_duration int,
    PRIMARY KEY(course_id),
    Foreign Key (course_id) REFERENCES ineuron(course_id)
);

drop table class;

create table test(
    `id` int not null,
    `name` varchar(60),
    email_id varchar(60),
    `address` varchar(60)
);

alter table test 
add primary key(id);

alter table test drop PRIMARY KEY;

alter table test
add constraint test_prim
PRIMARY KEY(id, email_id);

create table parent(
    `id` int not null,
    primary key(id)
);

create table child(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id)
);

insert into parent values(1);

insert into child values(1,1);

delete from child where id=1;

delete from parent where id=1;

drop table child;

create table child(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id) on delete CASCADE
);

insert into parent values(1),(2);

insert into child values(1,1),(1,2),(3,2),(2,2);

delete from parent where id=1;

drop table child;

create table child(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id) on update CASCADE
);

insert into parent values(1);

insert into child values(1,1),(1,2),(3,2),(2,2);

update parent
set id=3 where id=2;

create table child1(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id) on update CASCADE
    on delete CASCADE
);

create database win_fun;

use win_fun;

create table ineuron_students(
    student_id int,
    student_batch varchar(40),
    student_name varchar(40),
    student_stream varchar(40),
    student_marks varchar(30),
    student_mail_id varchar(50)
);

insert into ineuron_students values(101,'fsda','saurabh','cs',80,'saurabh@gmail.com');

insert into ineuron_students values(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com'),
(102 ,'fsda' , 'sanket','cs',81,'sanket@gmail.com'),
(103 ,'fsda' , 'shyam','cs',80,'shyam@gmail.com'),
(104 ,'fsda' , 'sanket','cs',82,'sanket@gmail.com'),
(105 ,'fsda' , 'shyam','ME',67,'shyam@gmail.com'),
(106 ,'fsds' , 'ajay','ME',45,'ajay@gmail.com'),
(106 ,'fsds' , 'ajay','ME',78,'ajay@gmail.com'),
(108 ,'fsds' , 'snehal','CI',89,'snehal@gmail.com'),
(109 ,'fsds' , 'manisha','CI',34,'manisha@gmail.com'),
(110 ,'fsds' , 'rakesh','CI',45,'rakesh@gmail.com'),
(111 ,'fsde' , 'anuj','CI',43,'anuj@gmail.com'),
(112 ,'fsde' , 'mohit','EE',67,'mohit@gmail.com'),
(113 ,'fsde' , 'vivek','EE',23,'vivek@gmail.com'),
(114 ,'fsde' , 'gaurav','EE',45,'gaurav@gmail.com'),
(115 ,'fsde' , 'prateek','EE',89,'prateek@gmail.com'),
(116 ,'fsde' , 'mithun','ECE',23,'mithun@gmail.com'),
(117 ,'fsbc' , 'chaitra','ECE',23,'chaitra@gmail.com'),
(118 ,'fsbc' , 'pranay','ECE',45,'pranay@gmail.com'),
(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com');

insert into ineuron_students values(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com');

create database ineuron_partition;

use ineuron_partition;


create table ineuron_course(
    course_name varchar(50),
    course_id int,
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int
);

insert into ineuron_course values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course1(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by range(course_launch_year)(
        partition p0 values less than (2019),
        partition p1 values less than (2020),
        partition p2 values less than (2021),
        partition p3 values less than (2022),
        partition p4 values less than (2023)
);

insert into ineuron_course1 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course2(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by hash(course_launch_year)
    partitions 5;

insert into ineuron_course2 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course3(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by hash(course_launch_year)
    partitions 10;

insert into ineuron_course3 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);


create table ineuron_course4(
    course_name varchar(50),
    course_id int(10) PRIMARY KEY,
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by Key()
    partitions 10;

insert into ineuron_course4 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course5(
    course_name varchar(50) unique not NULL,
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by Key(course_name)
    partitions 10;

create table ineuron_course6(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by list(course_launch_year)(
    partition p0 values in (2019,2020),
    partition p1 values in (2022,2021));

insert into ineuron_course6 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course7(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by range COLUMNS(course_name, course_id,course_launch_year)(
    partition p0 values less than ('aiops',105,2019),
    partition p1 values less than ('fsds' ,110,2021),
    partition p2 values less than ('MERN',116,2023));


insert ignore into ineuron_course7 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course8(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by LIST COLUMNS(course_name)(
    partition p0 values  in('aiops','data analytics','Dl','RL'),
    partition p1 values  in('fsds' ,'big data','blockchain'),
    partition p2 values  in('MERN','java','interview prep','fsda'));

insert ignore into ineuron_course8 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

create table ineuron_course9(
    course_name varchar(50),
    course_id int(10),
    course_title varchar(60),
    course_desc varchar(60),
    launch_date date,
    course_fee int,
    course_mentor varchar(60),
    course_launch_year int)
    partition by range(course_launch_year)
    subpartition by hash(course_launch_year)
    subpartitions 5 (
    partition p0 values less than (2019) ,
    partition p1 values less than (2020) ,
    partition p2 values less than (2021) ,
    partition p3 values less than (2022) 
);

create database operation;

use operation;

create table if not exists course(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50)
);

create table if not exists student(
    student_id int,
    student_name varchar(30),
    student_mobile int,
    student_course_enroll varchar(30),
    student_course_id INT
);

insert into course values
(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 101),
(304 , "sudhanshu", 3543453,'yes', 103),
(305 , "sudhanshu", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103);

create table if not exists course1(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_id)
);

insert into course1 values
(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

create table if not exists course2(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_id,course_name)
);

create table if not exists course3(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_desc,course_name)
);

create table if not exists course4(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_desc,course_name,course_tag)
);

insert into course4 values
(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');


create table if not exists course5(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    unique index(course_desc)
);

create table if not exists course6(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    unique index(course_desc, course_name)
);

create database ineuron;

use ineuron;

create table course(
    course_id int,
    course_desc varchar(50),
    course_mentor varchar(60),
    course_price int,
    course_discount int
);

create table course_update(
    course_mentor_update varchar(50),
    course_price_update int,
    course_discount_update int
);

create table course1(
    course_id int,
    course_desc varchar(50),
    course_mentor varchar(60),
    course_price int,
    course_discount int,
    course_date date
);

delimiter //
create trigger course_before_insert
before insert 
on course1 for each row
begin
set new.course_date = sysdate();
end; //

insert into course1(course_id, course_desc,course_mentor,course_price,course_discount) value(101,"fsda",'sudh',4000,10);

create table course2(
    course_id int,
    course_desc varchar(50),
    course_mentor varchar(60),
    course_price int,
    course_discount int,
    create_date date,
    user_info varchar(50)
);

delimiter //
create trigger course_before_insert12
before insert 
on course2 for each row
begin
declare user_val varchar(50);
set new.create_date = sysdate();
select user() into user_val;
set new.user_info = user_val;
end; //

insert into course2(course_id, course_desc,course_mentor,course_price,course_discount) value(101,"fsda",'sudh',4000,10)

create table ref_course(
    record_insert_date date,
    record_insert_user varchar(50)
);

delimiter //
create trigger course_before_insert123
before insert 
on course2 for each row
begin
    declare user_val varchar(50);
    set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;
    insert into ref_course values(sysdate(),user_val);
end; //

insert into course2(course_id, course_desc,course_mentor,course_price,course_discount) value(101,"fsda",'sudh',4000,10)


create table test1(
    c1 varchar(50),
    c2 date,
    c3 int
);

create table test2(
    c1 varchar(50),
    c2 date,
    c3 int
);

create table test3(
    c1 varchar(50),
    c2 date,
    c3 int
);


delimiter //
create trigger to_update_others
before insert on test1 for each ROW
BEGIN
    insert into test2 values('xyz',sysdate(),23354);
    insert into test3 values('xyz',sysdate(),23354);
END // 

insert into test1 values("sudh",sysdate(), 2345);

delimiter //
create trigger to_update_others_table
after insert on test1 for each ROW
BEGIN
    update test2 set c1='abc' where c1='xyz';
    delete from test3 where c1='xyz';
END // 

insert into test1 values("krish",sysdate(), 2345);

delimiter //
create trigger to_delete_others_table
after delete on test1 for each ROW
BEGIN
    insert into test3 values("afterdelete",sysdate(),1234);
END // 

delete from test1 where c1='krish';

delimiter //
create trigger to_delete_others_before
before delete on test1 for each ROW
BEGIN
    insert into test3 values("beforedelete",sysdate(),1234);
END // 

delete from test1 where c1='sudh';

delimiter //
create trigger to_delete_others_before_observation
before delete on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

insert into test1 values("krish",sysdate(), 2345);

delete from test1 where c1 = 'krish';

delimiter //
create trigger to_delete_others_after_observation
after delete on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

insert into test1 values("krish",sysdate(), 2345);


delimiter //
create trigger to_update_others_after_observation
after update on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

insert into test1 values("krish",sysdate(), 2345);


update test1 
set c1="update" where c1='krish';

delimiter //
create trigger to_update_others_before_observation
before update on test1 for each ROW
BEGIN
    insert into test3 values(old.c1,old.c2,old.c3);
END // 

update test1 
set c1="before_update" where c1='before';


use ineuron_partition;

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
