DROP DATABASE IF EXISTS inner_join_practice;
CREATE DATABASE inner_join_practice;
USE inner_join_practice;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    dept_id INT,
    job_role VARCHAR(40),
    experience INT,
    joining_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    project_budget DECIMAL(12,2),
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
(emp_id, emp_name, age, gender, salary, city, dept_id, job_role, experience, joining_date)
VALUES
(101, 'Rahul', 25, 'Male', 35000, 'Delhi', 1, 'Developer', 2, '2023-01-15'),
(102, 'Amit', 30, 'Male', 45000, 'Mumbai', 4, 'Sales Executive', 5, '2020-06-10'),
(103, 'Priya', 28, 'Female', 50000, 'Pune', 2, 'HR Executive', 4, '2021-03-20'),
(104, 'Neha', 24, 'Female', 30000, 'Delhi', 1, 'Tester', 1, '2024-02-12'),
(105, 'Rohit', 35, 'Male', 65000, 'Delhi', 3, 'Accountant', 8, '2017-09-05'),
(106, 'Anjali', 27, 'Female', 40000, 'Delhi', 1, 'Developer', 3, '2022-07-18'),
(107, 'Karan', 32, 'Male', 55000, 'Mumbai', 5, 'Marketing Executive', 6, '2019-11-25'),
(108, 'Pooja', 26, 'Female', 38000, 'Mumbai', 2, 'Recruiter', 3, '2022-05-14'),
(109, 'Suresh', 40, 'Male', 75000, 'Delhi', 1, 'Manager', 12, '2013-04-08'),
(110, 'Meena', 29, 'Female', 48000, 'Pune', 3, 'Analyst', 5, '2020-10-19'),
(111, 'Arjun', 23, 'Male', 28000, 'Chennai', 1, 'Developer', 1, '2024-06-01'),
(112, 'Simran', 31, 'Female', 60000, 'Delhi', 5, 'Manager', 7, '2018-08-22'),
(113, 'Vikas', 36, 'Male', 52000, 'Kolkata', 4, 'Sales Executive', 9, '2016-02-17'),
(114, 'Riya', 25, 'Female', 33000, 'Jaipur', 2, 'HR Executive', 2, '2023-09-11'),
(115, 'Varun', 29, 'Male', 47000, 'Delhi', 3, 'Accountant', 4, '2021-12-03'),
(116, 'Sneha', 34, 'Female', 70000, 'Bangalore', 1, 'Senior Developer', 10, '2015-05-27'),
(117, 'Manish', 38, 'Male', 58000, 'Mumbai', 5, 'Manager', 11, '2014-07-16'),
(118, 'Kavita', 27, 'Female', 42000, 'Pune', 4, 'Sales Executive', 4, '2021-01-09'),
(119, 'Deepak', 33, 'Male', 49000, 'Chennai', 3, 'Analyst', 7, '2018-10-30'),
(120, 'Nisha', 26, 'Female', 36000, 'Delhi', 1, 'Tester', 2, '2023-04-21');
INSERT INTO projects
(project_id, project_name, dept_id, project_budget)
VALUES
(201, 'E-Commerce Platform', 1, 800000),
(202, 'Mobile Banking App', 1, 1200000),
(203, 'Employee Recruitment System', 2, 400000),
(204, 'Financial Reporting System', 3, 650000),
(205, 'Sales Dashboard', 4, 500000),
(206, 'Customer CRM', 4, 900000),
(207, 'Digital Marketing Campaign', 5, 350000),
(208, 'Data Analytics Platform', 1, 1000000),
(209, 'Payroll Management', 2, 450000),
(210, 'Budget Planning System', 3, 700000);

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT COUNT(*) AS total_departments
FROM departments;

SELECT COUNT(*) AS total_projects
FROM projects;

select * from employees;
select * from departments;

select * from projects;

select * from employees as e join departments as d on e.dept_id = d.dept_id
join projects as p on d.dept_id = p.dept_id;


-- 🟢 Basic

-- INNER JOIN - PRACTICE QUESTIONS
-- Database: inner_join_practice
-- 
USE inner_join_practice;



-- Q1. Employees aur departments ko dept_id ke basis par
-- INNER JOIN karke employee name aur department name display karo.

SELECT 
    e.emp_name,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q2. Employee name, salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q3. Employee name, job role aur department location display karo.

SELECT 
    e.emp_name,
    e.job_role,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q4. Employee name, city aur department name display karo.

SELECT 
    e.emp_name,
    e.city,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q5. Employee name, experience aur department name display karo.

SELECT 
    e.emp_name,
    e.experience,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q6. Employee ID, employee name aur department name display karo.

SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id;


-- Q7. Sirf IT department ke employees ka name,
-- salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';


-- Q8. Sirf Delhi city ke employees ka name,
-- job role aur department name display karo.

SELECT 
    e.emp_name,
    e.job_role,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.city = 'Delhi';


-- Q9. Salary 50000 se greater employees ka name,
-- salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.salary > 50000;


-- Q10. Experience 5 years se greater employees ka name,
-- experience aur department name display karo.

SELECT 
    e.emp_name,
    e.experience,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.experience > 5;


-- ==========================================================
-- 🟡 INTERMEDIATE LEVEL
-- ==========================================================

-- Q11. IT aur Finance departments ke employees ka name,
-- salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE d.dept_name IN ('IT', 'Finance');


-- Q12. Female employees ka name,
-- salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.gender = 'Female';


-- Q13. Salary 40000 se 70000 ke beech wale employees ka
-- name, salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.salary BETWEEN 40000 AND 70000;


-- Q14. Delhi ya Mumbai city ke employees ka
-- name, city aur department name display karo.

SELECT 
    e.emp_name,
    e.city,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.city IN ('Delhi', 'Mumbai');


-- Q15. Jinka job role Manager hai,
-- unka name, salary aur department name display karo.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.job_role = 'Manager';


-- Q16. Employees ko salary ke highest to lowest order mein
-- display karo, saath mein department name bhi dikhao.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;


-- Q17. Employees ko department name ke
-- alphabetical order mein display karo.

SELECT 
    e.emp_name,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
ORDER BY d.dept_name ASC;


-- Q18. Employee name aur department name display karo,
-- lekin sirf un employees ko jinki experience 5 years
-- ya usse greater hai.

SELECT 
    e.emp_name,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.experience >= 5;


-- Q19. Employee name, salary aur department name display karo
-- jinki salary 45000 se greater AND department IT hai.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.salary > 45000
  AND d.dept_name = 'IT';


-- Q20. Employee name, salary aur department name display karo
-- jinki salary 50000 se greater OR experience 8 years se greater hai.

SELECT 
    e.emp_name,
    e.salary,
    d.dept_name
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
WHERE e.salary > 50000
   OR e.experience > 8;


-- ==========================================================
-- 🔴 INTERVIEW LEVEL
-- ==========================================================

-- Q21. Department-wise employee count nikalo
-- using INNER JOIN + GROUP BY.

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q22. Department-wise average salary nikalo
-- using INNER JOIN + GROUP BY.

SELECT 
    d.dept_name,
    AVG(e.salary) AS average_salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q23. Department-wise total salary nikalo
-- aur total salary ko descending order mein display karo.

SELECT 
    d.dept_name,
    SUM(e.salary) AS total_salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary DESC;


-- Q24. Department-wise maximum salary
-- aur minimum salary nikalo.

SELECT 
    d.dept_name,
    MAX(e.salary) AS maximum_salary,
    MIN(e.salary) AS minimum_salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q25. Har department mein Male aur Female employees
-- ka count nikalo using multiple-column GROUP BY.

SELECT 
    d.dept_name,
    e.gender,
    COUNT(e.emp_id) AS employee_count
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name, e.gender;


-- Q26. Employees aur departments ko JOIN karke
-- sirf un departments ko display karo jinki
-- average salary 45000 se greater hai.

SELECT 
    d.dept_name,
    AVG(e.salary) AS average_salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 45000;


-- Q27. Departments aur projects ko INNER JOIN karke
-- department name, project name aur project budget display karo.

SELECT 
    d.dept_name,
    p.project_name,
    p.project_budget
FROM departments AS d
INNER JOIN projects AS p
    ON d.dept_id = p.dept_id;


-- Q28. Har department ki total project budget nikalo
-- using INNER JOIN + GROUP BY.

SELECT 
    d.dept_name,
    SUM(p.project_budget) AS total_project_budget
FROM departments AS d
INNER JOIN projects AS p
    ON d.dept_id = p.dept_id
GROUP BY d.dept_name;


-- Q29. Department name ke saath
-- employee count aur total salary dono nikalo.

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q30. Employees, departments aur projects — teeno tables ko
-- INNER JOIN karke employee name, department name,
-- project name aur project budget display karo.

SELECT 
    e.emp_name,
    d.dept_name,
    p.project_name,
    p.project_budget
FROM employees AS e
INNER JOIN departments AS d
    ON e.dept_id = d.dept_id
INNER JOIN projects AS p
    ON d.dept_id = p.dept_id;
