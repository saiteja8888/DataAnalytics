-- Inner join, Left Outer Join, Right Outer Join, Full Outer Join, Cross Join, self join, natural join, using keyword, subqueries, union, union all, correlated queries
use sakila;
-- Create table1
CREATE TABLE table1(
	ID INT, `Value` VARCHAR(30));
INSERT INTO table1 (ID,`Value`)
SELECT 1, 'First'
UNION ALL
SELECT 2, 'Second'
UNION ALL
SELECT 3, 'THIRD'
UNION ALL
SELECT 4, 'FOUR'
UNION ALL
SELECT 5, 'Five';

-- create table 2
CREATE TABLE table2(
ID INT, `Value` varchar(30));
INSERT INTO table2(ID, `Value`)
SELECT 1, 'First'
UNION ALL
SELECT 2, 'Second'
UNION ALL
SELECT 3, 'Third'
UNION ALL
SELECT 6,'Sixth'
UNION ALL
SELECT 7, 'Seventh'
UNION ALL
SELECT 8, 'Eighth';

select * from table1;

select * from table2;

-- Inner Join
select t1.*, t2.*
FROM table1 t1
INNER JOIN table2 t2
where t1.ID=t2.ID;

SELECT t1.ID, t1.value, t2.id, t2.value 
from table1 t1 
inner join table2 t2 
where t1.id=t2.id;

-- Left Outer Join
-- left join == left outer join
SELECT t1.*,t2.* from table1 t1
LEFT OUTER JOIN table2 t2 on t1.id=t2.id;

SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table1 t1 LEFT OUTER JOIN table2 t2
on t1.id=t2.id;

-- Right Outer Join
SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table1 t1 Right OUTER JOIN table2 t2
on t1.id=t2.id;

-- Convert Right Join to Left Join
SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table2 t2 LEFT OUTER JOIN table1 t1
on t1.id=t2.id;

-- FULL OUTER JOIN
SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table1 t1 LEFT OUTER JOIN table2 t2
on t1.id=t2.id
UNION
SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table1 t1 Right OUTER JOIN table2 t2
on t1.id=t2.id;

-- Cross Join - No condition required
SELECT t1.ID AS T1ID, t1.value AS T1Value, t2.id AS T2ID, t2.value T2Value
from table1 t1 CROSS JOIN table2 t2;

-- Pop Quiz
CREATE TABLE students(studentid int, studentname varchar(30));
INSERT INTO students values(1,'John'),(2,'Matt'),(3,'James');

CREATE TABLE classes(classid int,classname varchar(30));
INSERT INTO classes values(1,'Math'),(2,'Art'),(3,'History');

CREATE TABLE studentclass(studentid int, classid int);
INSERT INTO studentclass values(1,1),(1,2),(3,1),(3,2),(3,3);


select * from students;
select * from classes;
select * from studentclass;

/* What will be the best possible join if we want to retrieve 
all the students who have signed up for the classes in the summer? */
select sc.studentid, c.classname
from studentclass sc
inner join classes c on sc.classid=c.classid
inner join students s on sc.studentid = s.studentid;

/* What will be the best possible join if we want to retrieve 
all the students who have signed up for the classes in the summer? */
select s.studentid,c.classname
from studentclass sc left join students s on s.studentid=sc.studentid
left join classes c on c.classid=sc.classid where c.classid = sc.classid;

/* What will be the best possible join if we want to retrieve 
all the students who have signed up for no classes in the summer? */
select s.studentname
from students s left join studentclass sc on s.studentid=sc.studentid
left join classes c on c.classid=sc.classid where c.classname is null;

-- Equi Join
/* An EQUI Join is a specific type of comparator-based join,
that uses only equality comparisions in the join-predicate */

-- sample syntax
SELECT t1.*,t2.*
from table1 t1
inner join table2 t2 on t1.id=t2.id;

-- non equi join
/* A non-equi join is a specific type of comparator-based join, 
that does not use equality comparisions in the join-predicate */

-- sample syntax
SELECT t1.*,t2.*
from table1 t1
inner join table2 t2 on t1.id>t2.id;

-- self join
-- sample syntax
SELECT t1.*,t2.*
from table1 t1
inner join table1 t2 on t1.id>t2.id;

-- create a table
CREATE TABLE employee(
employeeid int primary key,
`name` varchar(50),
managerid int);

insert into employee values(1,'Mike',3),(2,'David',3),(3,'Roger',Null),(4,'Marry',2),(5,'Joseph',2),(7,'Ben',2);

select * from employee;

select e1.name AS EmployeeName, e2.name AS EmployeeManager
from employee e1 inner join employee e2 where e1.managerid=e2.employeeid; 

select * from employee;

select e1.name AS employeename, ifnull(e2.name, 'Top Manager') as managername
from employee e1 left join employee e2 on e1.managerid=e2.employeeid; 

-- Natural Join
/* A Natural join is kind of join which joins 2 or more tables
based on all the columns in the two tables with the same name 

It can be either inner or outer join */

select t1.*, t2.*
from table1 t1
inner join table2 t2 where t1.id=t2.id;

select t1.*, t2.*
from table1 t1
natural join table2 t2;

select t1.*, t2.*
from table1 t1
Left join table2 t2 on t1.id=t2.id;

select t1.*, t2.*
from table1 t1
natural left join table2 t2;

select t1.*, t2.*
from table1 t1
right join table2 t2 on t1.id=t2.id;

select t1.*, t2.*
from table1 t1
natural right join table2 t2;


-- using
/* USING keyword simplifies syntax for joining tables when the columns
have the same name in both the tables.
USING keyword can be used with inner or outer joins
you can use more than one column with USING keyword */

select t1.*, t2.*
from table1 t1
inner join table2 t2 using (ID, VALUE);

select t1.*, t2.*
from table1 t1
inner join table2 t2 using (ID);

select t1.*, t2.* 
from table1 t1 
inner join table2 t2 on t1.id=t2.id and t1.value=t2.value;

select t1.*,t2.*
from table1 t1
inner join table2 t2 using (id,value);

select t1.*, t2.* 
from table1 t1 
left join table2 t2 on t1.id=t2.id and t1.value=t2.value;

select t1.*,t2.*
from table1 t1
left join table2 t2 using (id,value);

-- union(requires equal number of columns)
select t1.ID t1ID, t1.value t1value
from table1 t1
union all
select t2.id t2ID, t2.value t2value
from table2 t2;

select t1.ID t1ID, t1.value t1value
from table1 t1
union
select t2.id t2ID, t2.value t2value
from table2 t2;

select t1.ID t1ID, t1.value t1value
from table1 t1
union all
select t2.id t2ID, t2.value t2value
from table2 t2
order by t1id desc;

select t1.ID t1ID, t1.value t1value
from table1 t1
union all
select t2.id t2ID, t2.value t2value
from table2 t2
order by 1 desc;

-- subqueries
select t1.*
from table1 t1
where t1.id not in 
(select t2.id from table2 t2);

/*
Problem Statement:
Find customers who like to watch action movies?
*/

-- Subquery
SELECT cust.customer_id, cust.first_name, cust.last_name
FROM customer cust
WHERE cust.customer_id IN
(
SELECT ren.customer_id
FROM rental ren
WHERE ren.inventory_id IN
(
SELECT inv.inventory_id
FROM inventory inv
WHERE inv.film_id IN
(
SELECT fl.film_id
FROM film fl
WHERE fl.film_id IN 
(
SELECT fc.film_id
FROM film_category fc
WHERE fc.category_id IN 
(
SELECT cat.category_id 
FROM category cat
WHERE cat.name = 'Action'
)))))
ORDER BY cust.customer_id, cust.first_name, cust.last_name;

-- Joins
SELECT DISTINCT cust.customer_id, cust.first_name, cust.last_name
FROM customer cust
INNER JOIN rental ren ON ren.customer_id = cust.customer_id
INNER JOIN inventory inv ON inv.inventory_id = ren.inventory_id
INNER JOIN film fl ON fl.film_id = inv.film_id
INNER JOIN film_category fc ON fc.film_id = fl.film_id
INNER JOIN category cat ON cat.category_id = fc.category_id
WHERE cat.name = 'Action'
ORDER BY cust.customer_id, cust.first_name, cust.last_name;

-- Joins vs Subqueries
/*
Joins
- Can include columns from joining tables in the select clause
- easy to read and more intuitive

subqueries
- can pass the aggregate values to the main query
- simplifies long and complex queries
*/

-- Subqueries with Aggregation Function
select fm.title, cat.name, dt.CountOfCategory
from film fm
inner join film_category fc on fc.film_id = fm.film_id
inner join category cat on cat.category_id = fc.category_id
inner join
( select count(*) CountOfCategory, fc.category_id
from film_category fc group by fc.category_id) dt on dt.category_id = fc.category_id;

-- correlated subqueries
/*
A correlated subquery is a subquery that is executed once for each row.
A correlated subquery returns results based on the column of the main query
*/
-- sample example
select t1.*
from table1 t1
where t1.ID in
(select t2.ID from table2 t2 where t2.value = t1.value);

/*
Problem Statement:
Find all the customer's payments which are over their average payment.
*/

SELECT  payment_id, cust.first_name, cust.last_name, amount
FROM payment pt
INNER JOIN customer cust ON cust.customer_id = pt.customer_id;

SELECT  payment_id, cust.first_name, cust.last_name, amount
FROM payment pt
INNER JOIN customer cust ON cust.customer_id = pt.customer_id
WHERE amount >
		(	SELECT AVG(amount)
			FROM payment pt1
			WHERE pt1.customer_id = pt.customer_id)
ORDER BY cust.customer_id;

SELECT  cust.first_name, cust.last_name, COUNT(payment_id) CountofPayment
FROM payment pt
INNER JOIN customer cust ON cust.customer_id = pt.customer_id
WHERE amount >
		(	SELECT AVG(amount)
			FROM payment pt1
			WHERE pt1.customer_id = pt.customer_id)
GROUP BY cust.first_name, cust.last_name
ORDER BY cust.first_name;

select t1.*
from table1 t1
where t1.id not in 
(select t2.id from table2 t2);

select t1.*
from table1 t1
left join table2 t2 on t1.id = t2.id
where t2.id is null;
