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

insert into course1(course_id, course_desc,course_mentor,course_price,course_discount) value(101,"fsda",'sudh',4000,10)

select * from course1;

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

select * from course2;

create table ref_course(
    record_insert_date date,
    record_insert_user varchar(50)
);

select * from ref_course;

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

select * from ref_course;

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

select * from test1;
select * from test2;
select * from test3;

insert into test1 values("sudh",sysdate(), 2345);

select * from test1;
select * from test2;
select * from test3;

delimiter //
create trigger to_update_others_table
after insert on test1 for each ROW
BEGIN
    update test2 set c1='abc' where c1='xyz';
    delete from test3 where c1='xyz';
END // 

insert into test1 values("krish",sysdate(), 2345);


select * from test1;
select * from test2;
select * from test3;

delimiter //
create trigger to_delete_others_table
after delete on test1 for each ROW
BEGIN
    insert into test3 values("afterdelete",sysdate(),1234);
END // 

select * from test1;

delete from test1 where c1='krish';

select * from test1;

select * from test2;

select * from test3;

delimiter //
create trigger to_delete_others_before
before delete on test1 for each ROW
BEGIN
    insert into test3 values("beforedelete",sysdate(),1234);
END // 

delete from test1 where c1='sudh';

select * from test1;

select * from test2;

select * from test3;

delimiter //
create trigger to_delete_others_before_observation
before delete on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

insert into test1 values("krish",sysdate(), 2345);

select * from test1;

select * from test2;

select * from test3;

delete from test1 where c1 = 'krish';

select * from test1;

select * from test2;

delimiter //
create trigger to_delete_others_after_observation
after delete on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

select * from test1;

insert into test1 values("krish",sysdate(), 2345);

delete from test1 where c1='krish';

select * from test2;

delimiter //
create trigger to_update_others_after_observation
after update on test1 for each ROW
BEGIN
    insert into test2 values(old.c1,old.c2,old.c3);
END // 

select * from test1;

insert into test1 values("krish",sysdate(), 2345);

select * from test1;

update test1 
set c1="update" where c1='krish';

select * from test1;

select * from test2;

delimiter //
create trigger to_update_others_before_observation
before update on test1 for each ROW
BEGIN
    insert into test3 values(old.c1,old.c2,old.c3);
END // 

update test1 
set c1="before_update" where c1='before';

select * from test3;

-- 1. create a table col=name, mail_id, phone_number, address, user_sys, time_sys, salary, incentive, final_salary
-- 2. try to check all the time users name should start with s for each and every insert operation
-- 3. calculate final_salary

use ineuron_partition;

select * from ineuron_course;

select *,
CASE
    when course_name = 'fsda' then "this is my batch"
    when course_name = 'fsds' then "this is my batch"
    else "this is not your batch"
end as statement
from ineuron_course

select *,
CASE
    when LENGTH(course_name) = 4 then "len 4"
    when LENGTH(course_name) = 2 then "len 2"
    else "this is not your batch"
end as statement
from ineuron_course

update ineuron_course set course_name = CASE
when course_name = 'RL' then 'reinforcement learning'
when course_name = 'dl' then 'deep learning'
END

select * from ineuron_course;
