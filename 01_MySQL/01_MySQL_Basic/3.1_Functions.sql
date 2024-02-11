show databases;

set global max_allowed_packet = 209715200;

use sales;

select * from sales1;

DELIMITER $$
CREATE FUNCTION add_to_col(a INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE b INT;
    SET b = a+10;
    return b;
END $$


select max(sales) from sales1;

select add_to_col(10);

select * from sales1;

select quantity from sales1;

select quantity, add_to_col(quantity) 
from sales1;

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

select profit, discount, 
final_profit(profit,discount)
from sales1;

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

select profit, discount, 
final_profit_real(profit,discount,sales)
from sales1;

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

select 10, int_varchar(10)

select * from sales1;

select quantity, int_varchar(quantity) FROM
sales1;

select max(sales), min(sales) from sales1;

1 - 100 super affordable product
100 - 300 affordable
300 - 600 moderate price
600+ - expensive

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

select mark_sales(600)

select sales, mark_sales(sales) from sales1;

alter table sales1
add COLUMN marksales varchar(30)

update sales1
set marksales=mark_sales(sales)

select * from sales1 limit 10;

"""
SET @var = 10;
generate_data : loop ;
set @var = @var + 1;
if @var = 100 then leave generate_data;
end if ;
end loop generate_data;
"""

create table loop_table(val int)

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

call insert_data()

select * from loop_table

#Task 
#1 . Create a loop for a table to insert a record into a table for two columns in first coumn you have to inset a data ranging from 1 to 100 and in second column you hvae to inset a square of the first column 
#2 . create a user defined function to find out a date differences in number of days 
#3 . create a UDF to find out a log base 10 of any given number 
#4 . create a UDF which will be able to check a total number of records avaible in your table 
#5 . create a procedure to find out  5th highest profit in your sales table you dont have to use rank and windowing function 

#1 . Create a loop for a table to insert a record into a table for two columns in first coumn you have to inset a data ranging from 1 to 100 and in second column you hvae to inset a square of the first column 

create table sqr(
    num INT,
    num_sqr INT
)
select * from sales.sqr;

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

call sqr_num()

select * from sqr;

#2 . create a user defined function to find out a date differences in number of days 

DELIMITER $$
CREATE FUNCTION diff_date(
    date1 date,
    date2 date
) RETURNS date    
DETERMINISTIC
BEGIN

select now()
select datediff(year, 2023-07-10,2023-07-13) as date_diff;