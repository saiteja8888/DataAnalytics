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

select * from ineuron_students;

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

select * from ineuron_students;

select student_batch, avg(student_marks) from ineuron_students group by student_batch;

select student_batch, sum(student_marks) from ineuron_students GROUP BY student_batch;
select student_batch, min(student_marks) from ineuron_students GROUP BY student_batch;
select student_batch, max(student_marks) from ineuron_students GROUP BY student_batch;

select count(student_batch) from ineuron_students;

select count(DISTINCT student_batch) from ineuron_students;

select student_batch, count(student_batch) from ineuron_students GROUP BY student_batch;

select * from ineuron_students;
select max(student_marks) from ineuron_students group by student_batch;
select * from ineuron_students where student_marks in (SELECT max(student_marks) from ineuron_students where student_batch='fsda');

select * from ineuron_students where student_batch="fsda" ORDER BY student_marks desc limit 1,1;

select * from ineuron_students where student_batch="fsda" ORDER BY student_marks desc limit 0,1;
select * from ineuron_students where student_batch='fsda';
select * from ineuron_students where student_marks = 
(select distinct student_marks from ineuron_students where student_batch = 'fsda' order by student_marks DESC limit 2,1);

select student_id, student_batch, student_stream, student_marks, 
ROW_NUMBER() over(order by student_marks) 
as 'row number' 
from ineuron_students;

select student_id, student_batch, student_stream, student_marks, 
ROW_NUMBER() over(PARTITION BY student_batch order by student_marks) 
as 'row number' 
from ineuron_students;

select * from (select student_id, student_batch, student_stream, student_marks, 
ROW_NUMBER() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test
where `row_number`=1;

insert into ineuron_students values(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com');

select * from (select student_id, student_batch, student_stream, student_marks, 
ROW_NUMBER() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test
where `row_number`=1;

select * from (select student_id, student_batch, student_stream, student_marks, 
rank() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test
where `row_number`=1;

select * from (select student_id, student_batch, student_stream, student_marks, 
rank() over(order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test;

select * from (select student_id, student_batch, student_stream, student_marks, 
rank() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test;

select * from (select student_id, student_batch, student_stream, student_marks, 
rank() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test
where `row_number`=2;

select * from (select student_id, student_batch, student_stream, student_marks, 
DENSE_RANK() over(order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test;

select * from (select student_id, student_batch, student_stream, student_marks, 
DENSE_RANK() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test;

select * from (select student_id, student_batch, student_stream, student_marks, 
DENSE_RANK() over(PARTITION BY student_batch order by student_marks DESC) 
as 'row_number' 
from ineuron_students) as test
where `row_number`=2;

select * from (select student_id , student_batch , student_stream,student_marks ,
row_number() over(partition by student_batch order by student_marks desc) as 'row_number',
rank() over(partition by student_batch order by student_marks desc ) as 'row_rank',
dense_rank() over( partition by student_batch order by student_marks desc) as 'dense_rank'
from ineuron_students ) as test 

