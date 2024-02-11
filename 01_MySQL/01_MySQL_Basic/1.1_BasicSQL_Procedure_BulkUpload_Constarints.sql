#CLASS-1

SHOW DATABASES;

CREATE DATABASE ineuron_fsda;

CREATE DATABASE ineuron_fsda;

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS ineuron_fsda;

USE ineuron_fsda;

CREATE TABLE bank_details(
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

show tables;

select * from bank_details;

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
    
select * from bank_details;

select count(*) from bank_details;

select age, loan, job from bank_details;

SELECT `default` from bank_details;

select * from bank_details limit 5;

select * from bank_details where age=33;

select * from bank_details where age>=60;

select * from bank_details where age>=60 AND job = "retired";

select * from bank_details where education="unknown" or marital="single";

SELECT * from bank_details where education="unknown" or marital="single" and balance<500;

SELECT * from bank_details where (education="unknown" or marital="single") and balance<500;

select distinct job from bank_details;

select * from bank_details;

select * from bank_details order by age;

select * from bank_details order by age desc;

#1 with this data try to fine out sum of balance
#2 Try to find out avarage of balance
#3 try to find out who is having a min balance 
#4 try to find out who is having a mazxmim balance 
#5 try to prepare a list of all the person who is having loan 
#6 try to find out average balance for all the people whose job role is admin 
#7 try to find out a record  without job whose age is below 45 
#8 try to find out a record where education is primarty and person is jobless
#9 try to find of a record whose bank account is having a negative balance 
#10 try to find our a record who is not having house at all along with there balance;

#1 with this data try to fine out sum of balance
select sum(balance) from bank_details;

#2 Try to find out avarage of balance
select avg(balance) from bank_details;

#3 try to find out who is having a min balance 
select min(balance) from bank_details;

#4 try to find out who is having a mazxmim balance 
select max(balance) from bank_details;

#5 try to prepare a list of all the person who is having loan 
select * from bank_details where loan="yes";

#6 try to find out average balance for all the people whose job role is admin 
select avg(balance) from bank_details where job="admin.";

#7 try to find out a record without job whose age is below 45 
select * from bank_details where job="unknown" and age<=45;

#8 try to find out a record where education is primarty and person is jobless
select * from bank_details where education="primary" and job="unknown";

#9 try to find of a record whose bank account is having a negative balance 
select * from bank_details where balance <0;

#10 try to find our a record who is not having house at all along with there balance;
select housing, balance from bank_details where housing="no";

###############################################################
#Class-2

select * from bank_details;

DELIMITER &&
	CREATE PROCEDURE procedure_name()
    BEGIN
    #Query
    END &&
    
#Procedure 1;
DELIMITER &&
	CREATE PROCEDURE select_rec()
    BEGIN
    select * from bank_details;
    END &&
    
call select_rec();

#Procedure 2
DELIMITER &&
	CREATE PROCEDURE select_max()
    BEGIN
    select * from bank_details where balance in (
    select max(balance) from bank_details);
    END &&
    
call select_max();

#Procedure 3
DELIMITER &&
	CREATE PROCEDURE avg_bal_jobrole()
    BEGIN
    select avg(balance) from bank_details where job='admin.';
    END &&
    
call avg_bal_jobrole();

#Procedure 4
DELIMITER &&
	CREATE PROCEDURE avg_bal_job(IN jobrole varchar(30))
    BEGIN
    select avg(balance) from bank_details where job=jobrole;
    END &&
    
call avg_bal_job("admin.");
call avg_bal_job("retired");
call avg_bal_job("unknown");

#Procedure 5
DELIMITER &&
	CREATE PROCEDURE select_edu_job()
    BEGIN
    select * from bank_details where education="primary" and job="unknown";
    END &&
    
call select_edu_job();

#Procedure 6
DELIMITER &&
	CREATE PROCEDURE select_edujob(IN edu varchar(30), IN job varchar(30))
    BEGIN
    select * from bank_details where education=edu and job=job;
    END &&
    
call select_edujob("tertiary","management");

#views
CREATE view bank_view as 
select age, job, marital, balance, education, loan, housing 
from bank_details;

select * from bank_view;

#Class-3
#BULK UPLOAD
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

select * from dress;

LOAD DATA INFILE 'C:/Users/mswin/OneDrive/FSDA/1_MySQL/1_AttributeDataSet.csv'
into table dress
FIELDS  terminated by ','
ENCLOSED by '"'
LINES terminated by '\n'
IGNORE 1 rows;

#secure-file-private error 
#C:ProgramData/MySQL/MySQL Server 8.0/my 
#(open my file in admin mode)
#set the 'secure-file-priv=""'
#Now open services
#restart "MySQL80" service 

#Error code 29: use LOAD DATA local INFILE

LOAD DATA LOCAL INFILE 'C:/Users/mswin/OneDrive/FSDA/1_MySQL/1_AttributeDataSet.csv'
into table dress
FIELDS  terminated by ','
ENCLOSED by '"'
LINES terminated by '\n'
IGNORE 1 rows;

#Error code 3948: How to enable LOCAL capability in MySQL Workbench?
#open MySQL Command Line Client
#SHOW GLOBAL VARIABLES LIKE 'local_infile';
#SET GLOBAL local_infile = true;

#Error code 2068
#Change the back slashes (\) to forward slashes (/) in the file path. Run the file again. Even if the error persists, then follow the method below.
#Go to the MySQL Connections page.
#Right click the connection and click 'Edit connection'.
#Select 'Advanced' option. Paste the below line in the 'Others' box.
#OPT_LOCAL_INFILE=1 

LOAD DATA LOCAL INFILE 'C:/Users/mswin/OneDrive/FSDA/1_MySQL/1_AttributeDataSet.csv'
into table dress
FIELDS  terminated by ','
ENCLOSED by '"'
LINES terminated by '\n'
IGNORE 1 rows;

select * from dress;

select count(*) from dress;

#Constrains

Create table if not exists test(
	test_id int auto_increment,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30));
    
Create table if not exists test(
	test_id int auto_increment,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    primary key(test_id));
    
show tables;

insert into test values
(1,"sudhanshu","sudh@gmail.com","bangalore"),
(2,"krish","krish@gmail.com","bangalore"),
(3,"hitest","hitesh@gmail.com","bangalore"),
(4,"shubam","shubam@gmail.com","jaipur");

select * from test;

create table if not exists test2(
	test_id int not null auto_increment,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    primary key(test_id));
    
insert into test2 values
("sudhanshu","sudh@gmail.com","bangalore"),
("krish","krish@gmail.com","bangalore"),
("hitest","hitesh@gmail.com","bangalore"),
("shubam","shubam@gmail.com","jaipur");

insert into test2 (test_name,test_mailid, test_address) values
("sudhanshu","sudh@gmail.com","bangalore"),
("krish","krish@gmail.com","bangalore"),
("hitest","hitesh@gmail.com","bangalore"),
("shubam","shubam@gmail.com","jaipur");

select * from test2;

insert into test2 (test_name,test_mailid, test_address) values
	("sudhanshu","sudh@gmail.com","bangalore"),
	("krish","krish@gmail.com","bangalore"),
	("hitest","hitesh@gmail.com","bangalore"),
	("shubam","shubam@gmail.com","jaipur");

select * from test2;

create table if not exists test3(
	test_id int,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30),
    test_salary int check(test_salary>10000));
    
insert into test3  values
	(1,"sudhanshu","sudh@gmail.com","bangalore",20000),
	(2,"krish","krish@gmail.com","bangalore",5000),
	(3,"hitest","hitesh@gmail.com","bangalore",100000),
	(4,"shubam","shubam@gmail.com","jaipur",20000);

select * from test3;

insert into test3  values
	(1,"sudhanshu","sudh@gmail.com","bangalore",20000),
	(2,"krish","krish@gmail.com","bangalore",50000),
	(3,"hitest","hitesh@gmail.com","bangalore",100000),
	(4,"shubam","shubam@gmail.com","jaipur",20000);
    
select * from test3;

alter table test3 add constraint check(test_id>0);    

insert into test3  values
	(-1,"sudhanshu","sudh@gmail.com","bangalore",20000);

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

insert into test4  values
	(4,"shubam","shubam@gmail.com","jaipur",20000);
    
create table if not exists test5(
	test_id int not null,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30) check(test_address="bangalore"),
    test_salary int);
    
select * from test5;

insert into test5(test_name,test_mailid,test_address,test_salary) values
("shubam","shubam@gmail.com","jaipur",20000);

insert into test5(test_id,test_name,test_mailid,test_address,test_salary) values
(1,"shubam","shubam@gmail.com","bangalore",20000);

select * from test5;

create table if not exists test6(
	test_id int not null default 0,
    test_name varchar(30),
    test_mailid varchar(30),
    test_address varchar(30) check(test_address="bangalore"),
    test_salary int);
    
insert into test6(test_name,test_mailid,test_address,test_salary) values
("shubam","shubam@gmail.com","bangalore",20000);

select * from test6;

create table if not exists test7(
	test_id int not null default 0,
    test_name varchar(30),
    test_emailid varchar(30) unique,
    test_address varchar(30) check(test_address='bangalore'),
    test_salary int);
    
insert into test7(test_name,test_emailid,test_address,test_salary) values
("shubam","shubam@gmail.com","bangalore",20000);

insert into test7(test_name,test_emailid,test_address,test_salary) values
("shubam1","shubam@gmail.com","bangalore",20000);

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

select * from test8;