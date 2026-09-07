-- Type 9 — LIKE / NOT LIKE

select * from employees;

-- Q1. Jinka emp_name A se start hota hai, unki complete information nikalo.

select * from employees where emp_name like 'a%';

-- Q2. Jinka emp_name a par end hota hai, unka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where emp_name like '%a';

-- Q3. Jinke emp_name mein "an" kahin bhi present hai, unki complete information nikalo.

select * from employees where emp_name like '%an%'; 

-- Q4. Jinka emp_name R se start hota hai, unka emp_name, salary aur department nikalo.

select emp_name , salary , department from employees where emp_name like 'R%';

-- Q5. Jinke city ka naam "a" par end hota hai, unka emp_name, city aur department nikalo.

select emp_name , city , department from employees where city like '%a';

--  Q6. Jinka emp_name A se start nahi hota, unki complete information nikalo.

select * from employees where emp_name not like 'a%';

-- Q7. Jinke emp_name mein "i" present hai, unka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where emp_name like '%i%';

-- Q8. Jinke job_role mein "Manager" present hai, unki complete information nikalo.

select * from employees where job_role like '%manager%';

-- Q9. Jinka emp_name P se start hota hai aur unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where emp_name like 'p%';

-- Q10. Jinke department mein "a" present nahi hai, unka emp_name, department aur salary nikalo.

select emp_name , department , salary from employees where department not like '%a%';