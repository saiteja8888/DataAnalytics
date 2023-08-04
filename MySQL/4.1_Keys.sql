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

select * from ineuron;

insert into ineuron values(01,'FSDA','not-active',100);

insert into ineuron values(02,'FSDA','not-active',100);

create table stu_ineuron(
    student_id int,
    course_name varchar(60),
    student_mail varchar(60),
    student_status varchar(60),
    course_id1 int,
    Foreign Key (course_id1) REFERENCES ineuron(course_id)
);

insert into stu_ineuron values(101,'fsda','test@gmail.com','active',5);

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

insert into payment values('fsda',06,'not-active','7th aug');
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

alter table ineuron 
add constraint test_prim 
primary Key(course_id,course_name);

alter table ineuron
drop PRIMARY KEY;

alter table class drop primary key;

drop table ineuron;

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

select * from parent;

insert into child values(1,1);

select * from child;

insert into child values(1,2);

insert into child values(2,2);

select * from parent;

delete from parent where id=1;

delete from child where id=1;

delete from parent where id=1;

select * from parent;

select * from child;

drop table child;

create table child(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id) on delete CASCADE
);

insert into parent values(1),(2);
insert into child values(1,1),(1,2),(3,2),(2,2);

select * from child;

select * from parent;

delete from parent where id=1;

select * from parent;
select * from child;

update parent
set id=3 where id=2;

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

select * from parent;

select * from child;

create table child1(
    id int,
    parent_id int,
    Foreign Key (parent_id) REFERENCES parent(id) on update CASCADE
    on delete CASCADE
);