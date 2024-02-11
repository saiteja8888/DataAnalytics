/*
Functions
- String Functions
- Numeric Functions
- Date/Time Functions
- Control Flow Functions
- Cast Functions
- Information Functions
- Miscellaneous Functions 
Aggregate Functions / Column Functions
*/
-- Scalar Functions - A scalar function operates on a single value and returns a single value 
-- Ex: String Functions, Numeric Functions, Date/Time Functions

-- *******************String Functions*********************
-- ASCII - Returns numeric valu of left most character
select ascii('a'), ascii('A');

-- CHAR() - Returns the character for each integer passed
select char(77,121,83,81,76);
select char(76);

-- Length() - Returns the length of a string in bytes
select length('MySQL'),length('My SQL');

-- concat() - return concatinated string
select concat('my','sql');
select concat('my',' ', 'sql');

-- LCASE() - Return the argument in lowercase - synonym for lower()
select lcase('MySQL');

-- UCASE() - Returns the argument in uppercase - synonym for upper()
select ucase('My SQl');

-- left() - returns the leftmost number of characters as specified
select left('mysql',2);

-- right() - returns the specifies rightmost number of charecters
select right('mysql',3);

-- LTRIM() - removes leading spaces
select ltrim('    mysql    ');

-- RTRIM() - removes trailing spaces
select rtrim('   mysql     ');

-- TRIM() - removes leading and trailing spaces
select trim('    mysql     ');

-- STRCMP() - returns 0 if the strings are the same
-- -1 if the first argument is smaller than the second according to the current sort order
-- 1 if the first argument is larger than the second according to the current sort order

SELECT 	STRCMP('MySQLAuthority', 'SQLAuthority'), 
		STRCMP('SQLAuthority', 'MySQLAuthority'), 
		STRCMP('SQLAuthority', 'SQLAuthority');
        
-- reverse() - reverse the character in string
select reverse('mysql');

-- Table Column
SELECT 	CONCAT(first_name, ' ', last_name) AS Full_Name,
		REVERSE(CONCAT(first_name, ' ', last_name)) AS RFull_Name
FROM sakila.actor;

-- ********************Numeric Functions*****************
-- ABS() - Returns the absolute value
select abs(66), abs(-66);

-- ceiling() 
select ceiling(12.6);

-- FLOOR()
select floor(12.8);

-- DEGREES() - convert radians to degrees
select degrees(PI()),Degrees(PI()/2);

-- PI() - Return the value of pi
select pi();

-- pow() 
select pow(2,3);

-- sqrt()
select sqrt(25);

SELECT 	amount, ROUND(amount) Amount,
		amount-0.5, ROUND(amount-0.5) R_Amount 
FROM sakila.payment;

-- ******************Date/TIME Functions**********************
-- ADDDATE() or DATE_ADD() - Add time values (intervals) to a date value
select adddate('2024-01-01', INTERVAL 10 DAY);
select date_add('2024-01-01', INTERVAL 10 DAY);

-- SUBDATE() or DATE_SUB() - Subtract a time value (interval) from a date
select subdate('2024-01-01', INTERVAL 10 DAY);
select date_sub('2024-01-01', INTERVAL 10 DAY);

-- CURDATE(), CURRENT_DATE, CURRENT_DATE() - Returns the current date
select curdate(), current_date(), current_date;

-- CURTIME(), CURRENT_TIME, CURRENT_TIME() - Returns the current time
select curtime(), current_time, current_time();

-- now(), current_timestamp, current_timestamp() - Returns the current date and time
select now(), 
DATE(now()), TIME(now()), YEAR(now()),
QUARTER(NOW()), MONTH(NOW()), WEEK(NOW()), 
DAY(NOW()), DAYNAME(NOW()), HOUR(now()), MINUTE(NOW()), SECOND(NOW());

-- FORMAT DATE and TIME
SELECT 	DATE_FORMAT('2023-10-04 22:23:00', '%W %M %Y'),
		DATE_FORMAT('2023-10-04 22:23:00', '%d %b %Y %T:%f'),
		DATE_FORMAT('2023-10-04 22:23:00', '%b %d %Y %h:%i %p');
        
/*
Format	Description
%a	Abbreviated weekday name
%b	Abbreviated month name
%c	Month, numeric
%D	Day of month with English suffix
%d	Day of month, numeric (00-31)
%e	Day of month, numeric (0-31)
%f	Microseconds
%H	Hour (00-23)
%h	Hour (01-12)
%I	Hour (01-12)
%i	Minutes, numeric (00-59)
%j	Day of year (001-366)
%k	Hour (0-23)
%l	Hour (1-12)
%M	Month name
%m	Month, numeric (00-12)
%p	AM or PM
%r	Time, 12-hour (hh:mm:ss AM or PM)
%S	Seconds (00-59)
%s	Seconds (00-59)
%T	Time, 24-hour (hh:mm:ss)
%U	Week (00-53) where Sunday is the first day of week
%u	Week (00-53) where Monday is the first day of week
%V	Week (01-53) where Sunday is the first day of week, used with %X
%v	Week (01-53) where Monday is the first day of week, used with %x
%W	Weekday name
%w	Day of the week (0=Sunday, 6=Saturday)
%X	Year of the week where Sunday is the first day of week, four digits, used with %V
%x	Year of the week where Monday is the first day of week, four digits, used with %v
%Y	Year, four digits
%y	Year, two digits
*/
-- http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html#function_addtime

-- Table Column
SELECT rental_date, DATE_FORMAT(rental_date, '%W %M %Y')
FROM sakila.rental;

SELECT rental_date, left(DATE_FORMAT(rental_date, '%W %M %Y'),3)
FROM sakila.rental;

-- **********************CONTROL FLOW******************
-- Example of CASE Operator
SET @Var = 1;
SELECT CASE @Var 
when 1 then 'one'
when 2 then 'two'
else 'more' end as result;

select case 
when @var = 1 THEN 'ONE'
when @var = 2 THEN 'TWO'
Else 'more' END AS result;

SET @Var1 = 11;
SET @Var2 = 12;
select case
when (@Var1 = 11 and @Var2 = 13) then 'One'
when @Var2 = 12 then 'two'
else 'more' end as result;

-- Example of IF functions
SELECT IF(1>2, 'True','False');
select if(1>2,True,False);

select if(1<2,'Yes','No');
select if(YEAR(NOW()) = 2024, 'Yes','No');

-- Examples of IFNULL Function
SELECT IFNULL(1,0);
SELECT IFNULL(null,'replaced');
select 1/0;
select ifnull(1/0,'Yes');

-- Examples of NULLIF Function
SELECT NULLIF(1,1); -- Both parameters are same so returns Null
SELECT NULLIF(2,3); -- Both parameters are not same so returns first parameter
select nullif(6,5); -- Both parameters are not same so returns first parameter

-- ******************CAST Function***************
-- CAST() 
-- CONVERT() 
SELECT 1-2;
SELECT CAST(1-2 AS UNSIGNED);
SELECT CAST(18446744073709551615 AS SIGNED);
select cast(1-2 as signed);

SELECT convert(1-2 , UNSIGNED);
SELECT convert(18446744073709551615, SIGNED);
select convert(1-2, signed);


SELECT CONVERT('2013-06-19 14:47:08', DATE) AS DATE1,
       CONVERT('13-06-19 14:47:08', DATE) AS DATE2,
       CONVERT('20130619', DATE) AS DATE3,
       CONVERT('130619', DATE) AS DATE4;
       
SELECT cast('2013-06-19 14:47:08' as DATE) AS DATE1,
       cast('13-06-19 14:47:08' as DATE) AS DATE2,
       cast('20130619' as DATE) AS DATE3,
       cast('130619'as  DATE) AS DATE4;

SELECT CONVERT('14:47:08', TIME) AS TIME1,
       CONVERT('144708', TIME) AS TIME2;
       
SELECT cast('14:47:08' as TIME) AS TIME1,
       cast('144708' as TIME) AS TIME2;

SELECT CONVERT('11.1', DECIMAL(4,2)) AS Dec1;
SELECT cast('11.1'as DECIMAL(4,2)) AS Dec1;

-- *******************INFORMATION FUNCTIONS*******************
-- CHARSET() - returns the charecter set of the argument
select charset('Hello world');
SELECT CHARSET('SQLAuthority');

-- COLLATION() - Return the collation of the string argument
SELECT COLLATION('SQLAuthority');

-- CONNECTION_ID() - Return the connection ID (thread ID) for the connection
SELECT CONNECTION_ID();

-- CURRENT_USER(), CURRENT_USER	The authenticated user name and host name
SELECT CURRENT_USER(), CURRENT_USER;

-- DATABASE() OR SCHEMA() - Return the default (current) database name
USE sakila;
SELECT DATABASE(), SCHEMA();

-- USER() - The user name and host name provided by the client
SELECT USER();

-- VERSION - Returns a string that indicates the MySQL server version
SELECT VERSION();

-- *************MISC FUNCTIONS***************
-- RAND() - Return a random floating-point value
SELECT RAND() AS RandomValue;
SELECT LEFT(CEILING(RAND()*10),1) AS RandomValue;

-- SLEEP() - Sleep for a number of seconds
SELECT NOW();
SELECT SLEEP(1);
SELECT NOW(); 

-- UUID() - Return a Universal Unique Identifier (UUID)
SELECT UUID();

-- ****************Aggregated Functions**************
use sakila;

-- Counting number of rentals for each customer
select count(*) NoRentals, customer_id
from rental group by customer_id;

-- Displaying latest rental of movie by customer
SELECT MAX(rental_date) LastRentalDate, customer_id
FROM rental
GROUP BY customer_id;

-- Displaying first rental of movie by customer
SELECT MIN(rental_date) FirstRentalDate, customer_id
FROM rental
GROUP BY customer_id;

-- Average payment by each customer
SELECT 	AVG(amount) AvgPayment, SUM(amount) TotPayment, 
		COUNT(rental_id) TotalRentals, customer_id
FROM Payment
GROUP BY customer_id;
