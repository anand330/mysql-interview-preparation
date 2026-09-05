DROP DATABASE IF EXISTS dql_practice;
CREATE DATABASE dql_practice;
USE dql_practice;
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    department VARCHAR(30),
    job_role VARCHAR(30),
    experience INT,
    joining_date DATE
);
INSERT INTO employees
(emp_id, emp_name, age, gender, salary, city, department, job_role, experience, joining_date)
VALUES
(101, 'Rahul', 25, 'Male', 35000, 'Delhi', 'IT', 'Developer', 2, '2023-01-15'),
(102, 'Amit', 30, 'Male', 45000, 'Mumbai', 'Sales', 'Sales Executive', 5, '2020-06-10'),
(103, 'Priya', 28, 'Female', 50000, 'Pune', 'HR', 'HR Executive', 4, '2021-03-20'),
(104, 'Neha', 24, 'Female', 30000, 'Delhi', 'IT', 'Tester', 1, '2024-02-12'),
(105, 'Rohit', 35, 'Male', 65000, 'Delhi', 'Finance', 'Accountant', 8, '2017-09-05'),
(106, 'Anjali', 27, 'Female', 40000, 'Delhi', 'IT', 'Developer', 3, '2022-07-18'),
(107, 'Karan', 32, 'Male', 55000, 'Mumbai', 'Marketing', 'Marketing Executive', 6, '2019-11-25'),
(108, 'Pooja', 26, 'Female', 38000, 'Mumbai', 'HR', 'Recruiter', 3, '2022-05-14'),
(109, 'Suresh', 40, 'Male', 75000, 'Delhi', 'IT', 'Manager', 12, '2013-04-08'),
(110, 'Meena', 29, 'Female', 48000, 'Pune', 'Finance', 'Analyst', 5, '2020-10-19'),
(111, 'Arjun', 23, 'Male', 28000, 'Chennai', 'IT', 'Developer', 1, '2024-06-01'),
(112, 'Simran', 31, 'Female', 60000, 'Delhi', 'Marketing', 'Manager', 7, '2018-08-22'),
(113, 'Vikas', 36, 'Male', 52000, 'Kolkata', 'Sales', 'Sales Executive', 9, '2016-02-17'),
(114, 'Riya', 25, 'Female', 33000, 'Jaipur', 'HR', 'HR Executive', 2, '2023-09-11'),
(115, 'Varun', 29, 'Male', 47000, 'Delhi', 'Finance', 'Accountant', 4, '2021-12-03'),
(116, 'Sneha', 34, 'Female', 70000, 'Bangalore', 'IT', 'Senior Developer', 10, '2015-05-27'),
(117, 'Manish', 38, 'Male', 58000, 'Mumbai', 'Marketing', 'Manager', 11, '2014-07-16'),
(118, 'Kavita', 27, 'Female', 42000, 'Pune', 'Sales', 'Sales Executive', 4, '2021-01-09'),
(119, 'Deepak', 33, 'Male', 49000, 'Chennai', 'Finance', 'Analyst', 7, '2018-10-30'),
(120, 'Nisha', 26, 'Female', 36000, 'Delhi', 'IT', 'Tester', 2, '2023-04-21');


select * from employees;

-- Type 1: Basic WHERE + Comparison Operators

-- Q1. emp_id = 110 wale employee ki complete information nikalo.

select * from employees where emp_id = 110;

-- Q2. Jinki salary 50000 se greater hai, unki complete information nikalo.

select * from employees where salary > 50000;

-- Q3. Jinki salary 40000 se less hai, unka emp_name aur salary nikalo.

select emp_name , salary from employees where salary < 40000;

-- Q4. Jinki age 30 se greater ya equal hai, unki complete information nikalo.

select * from employees where age >= 30;

-- Q5. Jinki age 25 se less ya equal hai, unka emp_name aur age nikalo.

select emp_name , age from employees where age <=25;

-- Q6. Jinka experience 5 years ke equal hai, unki complete information nikalo.

select * from employees where experience = 5;

-- Q7. Jinki salary 60000 se greater ya equal hai, unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where salary >= 60000;

-- Q8. Jinki salary 35000 ke equal nahi hai, unki complete information nikalo.

select * from employees where salary != 35000;

-- Q9. Jinki age 30 ke equal nahi hai, unka emp_name aur age nikalo.

select emp_name , age from employees where age !=30;

-- Q10. Jinka emp_id 115 se less hai, unka emp_id, emp_name aur salary nikalo.

select emp_id , emp_name , salary from employees where emp_id < 115;