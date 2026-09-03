create table employees (
     emp_id int,
     emp_name varchar(50),
     salary int,
     city varchar(30)
     );
-- Q1. DROP
-- employees table ko completely remove karo.
drop table employees;


create table students(
      student_id int primary key,
      student_name varchar(50) not null,
      email varchar(50) unique,
      age int
      );
-- Q2. TRUNCATE
-- students table ke saare records remove karo, lekin table structure ko preserve rakho.
truncate table students;



create table products(
      product_id int,
      product_name varchar(100),
      price decimal(10,2),
      quantity int,
      manufacturing_date date
      );
-- Q3. RENAME
-- products table ka naam product_details karo.
rename table products to product_details;


create table customers (
      customer_id int primary key,
      customer_name varchar(40) not null,
      email varchar(30) unique,
      city varchar(40),
      balance decimal(12,2) default 0
      );
-- Q4. DROP
-- customers table ko completely remove karo.
drop table customers;


create table orders(
    order_id int);
    
-- Q5. RENAME
-- orders table ka naam order_details karo.
rename table orders to order_details;





      
      
