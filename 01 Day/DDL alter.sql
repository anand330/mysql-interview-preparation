drop database company;
create database company;
use company;
create table employees (
     emp_id int,
     emp_name varchar(50),
     salary int,
     city varchar(30)
     );

-- ==========================================
-- DDL - ALTER PRACTICE
-- Day 01
-- ==========================================


-- Q1. employees table mein department column add karo.
-- Type: ADD COLUMN

alter table employees
add column department varchar(50);


-- Q2. employees table mein phone aur joining_date columns add karo.
-- Type: ADD COLUMN

alter table employees
add column phone varchar(15), 
add column joining_date date;


-- Q3. employees table ke salary column ka datatype decimal(10,2) karo.
-- Type: MODIFY COLUMN

alter table employees 
modify salary decimal(10,2);


-- Q4. employees table ke emp_name column ka size varchar(100) karo.
-- Type: MODIFY COLUMN

alter table employees 
modify emp_name varchar(100);


-- Q5. employees table mein city column ka naam location karo.
-- Type: RENAME COLUMN

alter table employees 
rename column city to location;


-- Q6. employees table se phone column remove karo.
-- Type: DROP COLUMN

alter table employees
drop column phone;


-- Q7. employees table ke emp_id column ko primary key banao.
-- Type: ADD PRIMARY KEY

alter table employees
add primary key(emp_id);


-- Q8. employees table mein email column ko unique banao.
-- Type: ADD UNIQUE

alter table employees
add unique(email);


-- Q9. employees table mein email column add karo.
-- Type: ADD COLUMN

alter table employees
add column email varchar(100);


-- Q10. employees table mein status column add karo aur default value active rakho.
-- Type: ADD COLUMN + DEFAULT

alter table employees
add column status varchar(100) default 'active';


-- Q11. employees table ka naam employee_details karo.
-- Type: RENAME TABLE

rename table employees to employee_details;