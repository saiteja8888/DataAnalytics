-- Active: 1689492225009@@127.0.0.1@3306
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

select * from course;

select * from student;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c inner join student s on c.course_id=s.student_course_id;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c LEFT join student s on c.course_id=s.student_course_id;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c LEFT join student s on c.course_id=s.student_course_id where s.student_id is NULL;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c RIGHT join student s on c.course_id=s.student_course_id;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c RIGHT join student s on c.course_id=s.student_course_id where c.course_id is NULL;

select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c CROSS join student s on c.course_id=s.student_course_id;

show index from course;

create table if not exists course1(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_id)
);

show index from course1;

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

show index from course2;


create table if not exists course3(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_desc,course_name)
);

show index from course3;

create table if not exists course4(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    index(course_desc,course_name,course_tag)
);

show index from course4;

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

select * from course4 where course_id=106;

explain select * from course4 where course_id=106 OR course_name = 'fsds'; 

ANALYZE TABLE course4;

describe course4;

create table if not exists course5(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    unique index(course_desc)
);

show index from course5;

create table if not exists course6(
    course_id int,
    course_name varchar(50),
    course_desc varchar(60),
    course_tag varchar(50),
    unique index(course_desc, course_name)
);

show index from course6;

select course_id , course_name from course;

select student_id, student_name from student;

select course_id , course_name from course
UNION
select student_id, student_name from student;

select course_id , course_name, course_desc from course
UNION
select student_id, student_name from student;

select course_desc , course_name from course
UNION
select student_id, student_name from student;

select course_desc , course_name from course
UNION ALL
select student_id, student_name from student;

select * from course where course_id in (101,102,106);

with sample_students as (
select * from course where course_id in (101,102,106))
select * from sample_students where course_tag = 'java';

with outcome_cross as (
select c.course_id, c.course_name, c.course_desc,
s.student_id, s.student_name
from course c CROSS join student s)
select course_id, course_name,student_id from outcome_cross where student_id=301;

with ctetest as(
select 1 as col1, 2 as col2
union ALL
select 3,4) 
select col1 from ctetest;

with recursive cte(n) as 
(select 1 union all select n+1 from cte where n<5)
select * from cte;

with recursive cte as (
    select 1 as n, 1 as p, -1 as q 
    union ALL
    select n+1, p+1, q+2 from cte where n<5
) select * from cte;




