select * from employees;
-- Type 2 — WHERE with Text/String

-- Q1. Delhi city mein rehne wale employees ki complete information nikalo.

select * from employees where city='delhi';

-- Q2. IT department ke employees ki complete information nikalo.

select * from employees where department = 'it';

-- Q3. Female employees ka emp_name, gender aur city nikalo.

select emp_name , gender , city from employees where gender='female';

-- Q4. Male employees ka emp_name, salary aur department nikalo.

select emp_name , salary , department from employees where gender='male';

-- Q5. Mumbai city ke employees ka emp_name aur salary nikalo.

select emp_name , salary from employees where city = 'mumbai';

-- Q6. Finance department ke employees ki complete information nikalo.

select * from employees where department = 'finance';


-- Q7. Jinka job_role Developer hai, unka emp_name, job_role aur salary nikalo.

select emp_name , job_role , salary from employees where job_role='developer';

-- Q8. Pune city ke employees ka emp_name, city aur department nikalo.

select emp_name , city , department from employees where city = 'pune';

-- Q9. Jinka department Sales hai, unka emp_name, salary aur job_role nikalo.

select emp_name , salary , job_role from employees where department = 'sales';

-- Q10. Jinka job_role Manager hai, unki complete information nikalo.

select * from employees where job_role = 'manager';