-- ============================================
-- RIGHT JOIN PRACTICE DATABASE
-- ============================================

DROP DATABASE IF EXISTS right_join_practice;

CREATE DATABASE right_join_practice;

USE right_join_practice;


-- ============================================
-- DEPARTMENTS TABLE
-- ============================================

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);


-- ============================================
-- EMPLOYEES TABLE
-- ============================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    dept_id INT,
    job_role VARCHAR(40)
);


-- ============================================
-- DEPARTMENT DATA
-- ============================================

INSERT INTO departments
(dept_id, dept_name, location)
VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Pune'),
(4, 'Sales', 'Chennai'),
(5, 'Marketing', 'Bangalore'),
(6, 'Operations', 'Jaipur'),
(7, 'Admin', 'Kolkata');


-- ============================================
-- EMPLOYEE DATA
-- ============================================

INSERT INTO employees
(emp_id, emp_name, salary, city, dept_id, job_role)
VALUES
(101, 'Rahul', 35000, 'Delhi', 1, 'Developer'),
(102, 'Amit', 45000, 'Mumbai', 4, 'Sales Executive'),
(103, 'Priya', 50000, 'Pune', 2, 'HR Executive'),
(104, 'Neha', 30000, 'Delhi', 1, 'Tester'),
(105, 'Rohit', 65000, 'Delhi', 3, 'Accountant'),
(106, 'Anjali', 40000, 'Delhi', 1, 'Developer'),
(107, 'Karan', 55000, 'Mumbai', 5, 'Marketing Executive'),
(108, 'Pooja', 38000, 'Mumbai', 2, 'Recruiter'),
(109, 'Suresh', 75000, 'Delhi', 1, 'Manager'),
(110, 'Meena', 48000, 'Pune', 3, 'Analyst'),
(111, 'Arjun', 28000, 'Chennai', 1, 'Developer'),
(112, 'Simran', 60000, 'Delhi', 5, 'Manager'),
(113, 'Vikas', 52000, 'Kolkata', 4, 'Sales Executive'),
(114, 'Riya', 33000, 'Jaipur', 2, 'HR Executive'),
(115, 'Varun', 47000, 'Delhi', 3, 'Accountant'),
(116, 'Sneha', 70000, 'Bangalore', 1, 'Senior Developer'),
(117, 'Manish', 58000, 'Mumbai', 5, 'Manager'),
(118, 'Kavita', 42000, 'Pune', 4, 'Sales Executive'),
(119, 'Deepak', 49000, 'Chennai', 3, 'Analyst'),
(120, 'Nisha', 36000, 'Delhi', 7, 'Tester');

select * from employees;
select * from departments;

select * from employees as e right join departments  as d on e.dept_id = d.dept_id where e.dept_id is null;


-- Q1. All departments ka dept_name aur employee name display karo using RIGHT JOIN.

SELECT 
    d.dept_name, e.emp_name
FROM
    employees e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;

-- Q2. All departments ka dept_name, employee name aur salary display karo.

SELECT 
    d.dept_name, e.emp_name, e.salary
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;

-- Q3. All departments ka dept_name, location aur employee name display karo.

SELECT 
    d.dept_name, d.location, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;

-- Q4. Department name aur employee ka job_role display karo.

SELECT 
    d.dept_name, e.job_role
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
    
-- Q5. Department ID, department name aur employee name display karo.
SELECT 
    d.dept_id, d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
    
-- Q6. All departments ko RIGHT JOIN karke department name aur employee ID display karo.

SELECT 
    d.dept_name, e.emp_id
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
    
-- Q7. Sirf Delhi location wale departments ka department name aur employee name display karo.

SELECT 
    d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    d.location = 'delhi';
    

-- Q8. Sirf IT department ke employee name, salary aur department name display karo.
SELECT 
    e.emp_name, e.salary, d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    d.dept_name = 'it';
    
-- Q9. Salary 50000 se greater employees ka employee name, salary aur department name display karo.

SELECT 
    e.emp_name, e.salary, d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.salary > 50000;
    
-- Q10. All departments ko RIGHT JOIN karke department name aur employee city display karo.

SELECT 
    d.dept_name, e.city
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
    
-- 🔹 Unmatched Records — Q11 to Q15 🔥
-- Q11. Aise departments find karo jinka koi employee nahi hai.

SELECT 
    d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.emp_name IS NULL;
    
-- Q12. Un departments ka dept_id, dept_name aur location display karo jinke paas koi employee nahi hai.

SELECT 
    d.dept_id, d.dept_name, d.location
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.emp_name IS NULL;
    
-- Q13. All departments display karo aur jinke employee nahi hain unke employee columns NULL hone chahiye.

SELECT 
    d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
-- Q14. Aise departments find karo jahan employee available hai.

SELECT 
    d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.emp_name IS NOT NULL;
    
-- Q15. Aise departments find karo jahan employee available nahi hai. 🔥

SELECT 
    d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.emp_name IS NULL;
    
-- 🔹 RIGHT JOIN + WHERE / ORDER BY — Q16 to Q20
-- Q16. All departments ko employees ke saath display karo aur salary ko highest to lowest sort karo.

SELECT 
    d.dept_name, e.emp_name, e.salary
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

-- Q17. Delhi aur Mumbai location wale departments ke department name aur employee name display karo.

SELECT 
    d.dept_name, e.emp_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    d.location IN ('delhi' , 'mumbai');
    
-- Q18. Manager role wale employees ka employee name, salary aur department name display karo using RIGHT JOIN.

SELECT 
    e.emp_name, e.salary, d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.job_role = 'manager';
    
-- Q19. Salary 45000 se greater employees ka employee name, salary aur department name display karo.

SELECT 
    e.emp_name, e.salary, d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
WHERE
    e.salary > 45000;
    
-- Q20. All departments ko RIGHT JOIN ke through display karo aur department name ko alphabetical order mein sort karo.

SELECT 
    d.dept_name
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
ORDER BY d.dept_name;

-- 🔹 RIGHT JOIN + GROUP BY — Q21 to Q25 🔥

-- Q21. Department-wise employee count nikalo using RIGHT JOIN + GROUP BY.

SELECT 
    d.dept_name, COUNT(e.emp_id)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q22. Har department ki average employee salary nikalo.

SELECT 
    d.dept_name, AVG(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q23. Har department ki total salary nikalo.

SELECT 
    d.dept_name, SUM(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q24. Har department ki maximum aur minimum salary nikalo.

SELECT 
    d.dept_name, MAX(e.salary), MIN(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q25. Department-wise employee count nikalo aur highest employee count wale department ko top par rakho.

SELECT 
    d.dept_name, COUNT(e.emp_id)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_id
ORDER BY COUNT(e.emp_id) DESC;

-- Q26. Aise departments find karo jinki average salary 45000 se greater hai.

SELECT 
    d.dept_name, AVG(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 45000;

-- Q27. Department name, employee count aur total salary display karo.

SELECT 
    d.dept_name, COUNT(e.emp_id), SUM(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q28. Aise departments find karo jinki total employee salary 150000 se greater hai.

SELECT 
    d.dept_name, SUM(e.salary)
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING SUM(e.salary) > 150000;

-- Q29. All departments ko RIGHT JOIN karke:
-- -- Department Name
-- Location
-- Employee Name
-- Salary

SELECT 
    d.dept_name, d.location, e.emp_name, e.salary
FROM
    employees AS e
        RIGHT JOIN
    departments AS d ON e.dept_id = d.dept_id;
    
-- display karo. Unmatched departments bhi visible hone chahiye.

-- Q30. 🔥 Interview Question
-- RIGHT JOIN ka use karke sirf un departments ko find karo jinke paas koi employee nahi hai, aur output mein:
-- dept_id
-- dept_name
-- location
-- display karo.

select d.dept_id , d.dept_name , d.location from employees as e right join departments as d on e.dept_id = d.dept_id where e.emp_name is null;
