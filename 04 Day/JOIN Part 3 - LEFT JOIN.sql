DROP DATABASE IF EXISTS left_join_practice;

CREATE DATABASE left_join_practice;

USE left_join_practice;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    dept_id INT,
    job_role VARCHAR(40)
);
INSERT INTO departments
(dept_id, dept_name, location)
VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Pune'),
(4, 'Sales', 'Chennai'),
(5, 'Marketing', 'Bangalore'),
(6, 'Operations', 'Jaipur');
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
SELECT * FROM employees;

SELECT * FROM departments;

select * from employees as e join departments as d on e.dept_id = d.dept_id;	

-- ============================================
-- LEFT JOIN PRACTICE - 30 QUESTIONS
-- ============================================


-- Q1. All employees ka employee name aur department name display karo using LEFT JOIN.

SELECT e.emp_name, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q2. All employees ka employee name, salary aur department name display karo.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q3. All employees ka employee name, city aur department location display karo.

SELECT e.emp_name, e.city, d.location
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q4. All employees ka employee name, job role aur department name display karo.

SELECT e.emp_name, e.job_role, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q5. All employees ka employee ID, employee name aur department name display karo.

SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q6. All employees ko LEFT JOIN karke
-- employee name aur department ID display karo.

SELECT e.emp_name, e.dept_id
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q7. Sirf Delhi ke employees ka name, salary aur department name display karo.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.city = 'Delhi';


-- Q8. Sirf IT department ke employees ka
-- name, job role aur department name display karo.

SELECT e.emp_name, e.job_role, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';


-- Q9. Salary 50000 se greater employees ka
-- name, salary aur department name display karo.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.salary > 50000;


-- Q10. All employees ko LEFT JOIN karke
-- employee name aur department location display karo.

SELECT e.emp_name, d.location
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- Q11. Aise employees find karo
-- jinka department match nahi karta.

SELECT *
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- Q12. Un employees ka name aur dept_id display karo
-- jinka department table mein match nahi hai.

SELECT e.emp_name, e.dept_id
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- Q13. All employees ka data display karo
-- aur salary highest se lowest order mein sort karo.

SELECT *
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;


-- Q14. Female employees ka name, salary aur department name display karo.
-- Note: Current employees table mein gender column nahi hai.
-- Isliye is question ko skip kiya gaya hai.


-- Q15. Salary 40000 se 70000 ke beech wale employees ka
-- name, salary aur department name display karo.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.salary BETWEEN 40000 AND 70000;


-- Q16. Delhi aur Mumbai city ke employees ka
-- name, city aur department name display karo.

SELECT e.emp_name, e.city, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.city IN ('Delhi', 'Mumbai');


-- Q17. Manager role wale employees ka
-- name, salary aur department name display karo.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.job_role = 'Manager';


-- Q18. All employees ko department ke saath display karo
-- aur department name ko alphabetical order mein sort karo.

SELECT *
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
ORDER BY d.dept_name;


-- Q19. Employees ka name, salary aur department name display karo
-- jinki salary 45000 se greater hai.

SELECT e.emp_name, e.salary, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE e.salary > 45000;


-- Q20. Employees ka name aur department name display karo
-- aur sirf matching department wale employees rakho.

SELECT e.emp_name, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NOT NULL;


-- Q21. All employees ko department ke saath LEFT JOIN karke
-- department-wise employee count nikalo.

SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q22. Har department ki average employee salary
-- using LEFT JOIN + GROUP BY nikalo.

SELECT d.dept_name,
       AVG(e.salary) AS average_salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q23. Har department ki total salary nikalo.

SELECT d.dept_name,
       SUM(e.salary) AS total_salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_id, d.dept_name;


-- Q24. Har department ki maximum aur minimum salary nikalo.

SELECT d.dept_name,
       MAX(e.salary) AS maximum_salary,
       MIN(e.salary) AS minimum_salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q25. Aise departments find karo
-- jinke paas koi employee nahi hai.

SELECT d.dept_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;


-- Q26. Aise employees find karo
-- jinka department missing/unmatched hai.

SELECT e.emp_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- Q27. Department-wise employee count nikalo
-- aur highest employee count wale department ko top par rakho.

SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY employee_count DESC;


-- Q28. Har department ki average salary nikalo
-- aur sirf un departments ko show karo
-- jinki average salary 45000 se greater hai.

SELECT d.dept_name,
       AVG(e.salary) AS average_salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 45000;


-- Q29. Employees aur departments ko LEFT JOIN karke
-- department name, employee count aur total salary nikalo.

SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count,
       SUM(e.salary) AS total_salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Q30. Employees aur departments ko LEFT JOIN karke:
-- Employee Name
-- Salary
-- Department Name
-- Department Location
-- display karo.
-- Unmatched employees bhi result mein visible hone chahiye.

SELECT e.emp_name,
       e.salary,
       d.dept_name,
       d.location
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;
