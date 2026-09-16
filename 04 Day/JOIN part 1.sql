DROP DATABASE IF EXISTS join_part1;
CREATE DATABASE join_part1;
USE join_part1;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    city VARCHAR(30),
    dept_id INT,
    job_role VARCHAR(40),
    experience INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments
(dept_id, dept_name, location)
VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Pune'),
(4, 'Sales', 'Chennai'),
(5, 'Marketing', 'Bangalore');

INSERT INTO employees
(emp_id, emp_name, age, salary, city, dept_id, job_role, experience)
VALUES
(101, 'Rahul', 25, 35000, 'Delhi', 1, 'Developer', 2),
(102, 'Amit', 30, 45000, 'Mumbai', 4, 'Sales Executive', 5),
(103, 'Priya', 28, 50000, 'Pune', 2, 'HR Executive', 4),
(104, 'Neha', 24, 30000, 'Delhi', 1, 'Tester', 1),
(105, 'Rohit', 35, 65000, 'Delhi', 3, 'Accountant', 8),
(106, 'Anjali', 27, 40000, 'Delhi', 1, 'Developer', 3),
(107, 'Karan', 32, 55000, 'Mumbai', 5, 'Marketing Executive', 6),
(108, 'Pooja', 26, 38000, 'Mumbai', 2, 'Recruiter', 3),
(109, 'Suresh', 40, 75000, 'Delhi', 1, 'Manager', 12),
(110, 'Meena', 29, 48000, 'Pune', 3, 'Analyst', 5),
(111, 'Arjun', 23, 28000, 'Chennai', 1, 'Developer', 1),
(112, 'Simran', 31, 60000, 'Delhi', 5, 'Manager', 7),
(113, 'Vikas', 36, 52000, 'Kolkata', 4, 'Sales Executive', 9),
(114, 'Riya', 25, 33000, 'Jaipur', 2, 'HR Executive', 2),
(115, 'Varun', 29, 47000, 'Delhi', 3, 'Accountant', 4),
(116, 'Sneha', 34, 70000, 'Bangalore', 1, 'Senior Developer', 10),
(117, 'Manish', 38, 58000, 'Mumbai', 5, 'Manager', 11),
(118, 'Kavita', 27, 42000, 'Pune', 4, 'Sales Executive', 4),
(119, 'Deepak', 33, 49000, 'Chennai', 3, 'Analyst', 7),
(120, 'Nisha', 26, 36000, 'Delhi', 1, 'Tester', 2);
select * from employees;
select * from departments;

select * from employees as e join departments as d 
on e.dept_id = d.dept_id order by emp_id;

-- Q1. employees aur departments ko dept_id ke basis par JOIN karke employee name aur department name display karo.

select e.emp_name , d.dept_name from employees as e join departments as d 
on  e.dept_id = d.dept_id;

-- Q2. Employee ka name, salary aur department name display karo.

select e.emp_name , e.salary , d.dept_name from employees as e join departments as d 
on e.dept_id = d.dept_id;

-- Q3. Employee ka name, job role aur department location display karo.
 select * from employees;
select e.emp_name , e.job_role , d.dept_name , d.location from employees as e join  departments as d 
on e.dept_id = d.dept_id;

-- Q4. Employee ka name, city aur department name display karo.

select e.emp_name , d.location , d.dept_name from employees as e join departments as d
on e.dept_id =  d.dept_id;

-- Q5. Employee ka name, experience aur department name display karo.

select e.emp_name , e.experience , d.dept_name from employees as e join departments as d 
on e.dept_id = d.dept_id;

-- Q6. Employee ka ID, name aur department ID display karo.

select e.emp_id , e.emp_name , d.dept_id from employees e join departments d on e.dept_id = d.dept_id;

-- Q7. Sirf IT department ke employees ka name, salary aur department name display karo.

select e.emp_name , e.salary , d.dept_name from employees e join departments d on e.dept_id = d.dept_id where d.dept_name = 'it';

-- Q8. Sirf Delhi city ke employees ka name, job role aur department name display karo.

select e.emp_name , e.job_role , d.dept_name from employees as e  join departments as d on e.dept_id = d.dept_id where d.location = 'delhi';

-- Q9. Jinki salary 50,000 se greater hai, unka name, salary aur department name display karo.

select e.emp_name , e.salary , d.dept_name from employees as e join departments as d on e.dept_id = d.dept_id where e.salary > 50000;

--  Q10. 🔥 Sirf IT aur Finance departments ke employees ka name, salary, job role aur department name display karo.

select e.emp_name , e.salary , e.job_role , d.dept_name from employees as e join departments as d 
on d.dept_id = e.dept_id where d.dept_name in ('it','finance');


