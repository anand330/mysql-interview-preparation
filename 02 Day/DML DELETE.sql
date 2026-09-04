select  * from employees;
-- Q1. emp_id = 101 wale employee ka record delete karo.

delete from employees
where emp_id = 101;

-- Q2. Jinki city = 'Delhi' hai, un sab employees ke records delete karo.

delete from employees 
where city='delhi';

-- Q3. Jinki salary 30000 se kam hai, un employees ke records delete karo.

delete from employees
where salary < 30000;

-- Q4. emp_id = 105 wale employee ka record delete karo.

delete from employees
where emp_id = 105;

-- Q5. ⭐ Interview-focused
-- employees table ke saare records delete karo, lekin table structure ko preserve rakho.

delete from employees;


select * from employees;