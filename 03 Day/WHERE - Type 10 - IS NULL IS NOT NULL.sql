-- Type 10 — IS NULL / IS NOT NULL
select * from employees;

-- Q1. Jinki salary value NULL hai, unki complete information nikalo.

select * from employees where salary is null;

-- Q2. Jinki salary value NULL nahi hai, unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where salary is not null;

-- Q3. Jinki joining_date NULL hai, unki complete information nikalo.

select * from employees where joining_date is null;

-- Q4. Jinki joining_date NULL nahi hai, unka emp_name, joining_date aur department nikalo.

select emp_name , joining_date , department from employees where joining_date is not null;

-- Q5. Jinki city value NULL hai, unka emp_name aur city nikalo.

select emp_name , city from employees where city is null;

-- Q6. Jinki department value NULL nahi hai, unka emp_name, department aur salary nikalo.

select emp_name , department , salary from employees where department is  not null;

-- Q7. Jinki job_role NULL hai, unki complete information nikalo.

select * from employees where job_role is null;

-- Q8. Jinki experience value NULL nahi hai, unka emp_name, experience aur department nikalo.

select emp_name , experience , department from employees where experience is not null;

-- Q9. Jinki salary NULL hai aur city NULL nahi hai, unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where salary is null and city is not null;

-- Q10. Jinki joining_date NULL nahi hai aur salary bhi NULL nahi hai, unka emp_name, salary aur joining_date nikalo.

select emp_name , salary , joining_date from employees where joining_date is not null and salary is not null;