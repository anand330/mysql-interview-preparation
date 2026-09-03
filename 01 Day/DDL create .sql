-- Q1. Create a database named company
create database company;
use company;


-- Q2. Create employees table with emp_id, emp_name, salary and city
create table employees (
     emp_id int,
     emp_name varchar(50),
     salary int,
     city varchar(30)
     );


-- Q3. Create students table with primary key, not null and unique constraints
create table students(
      student_id int primary key,
      student_name varchar(50) not null,
      email varchar(50) unique,
      age int
      );


-- Q4. Create products table with different data types
create table products(
      product_id int,
      product_name varchar(100),
      price decimal(10,2),
      quantity int,
      manufacturing_date date
      );


-- Q5. Create customers table with primary key, not null, unique and default constraints
create table customers (
      customer_id int primary key,
      customer_name varchar(40) not null,
      email varchar(30) unique,
      city varchar(40),
      balance decimal(12,2) default 0
      );
      
      
