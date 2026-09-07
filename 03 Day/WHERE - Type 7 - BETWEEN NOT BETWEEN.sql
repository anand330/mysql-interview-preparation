-- Type 7 — BETWEEN / NOT BETWEEN
use dql_practice;
select * from employees;
-- Q1. Jinki salary 30000 se 50000 ke beech hai, unki complete information nikalo.

select * from employees where salary between 30000 and 50000;

-- Q2. Jinki age 25 se 30 ke beech hai, unka emp_name, age aur salary nikalo.

select emp_name , age , salary from employees where age between 25 and 30;

-- Q3. Jinka experience 3 se 7 years ke beech hai, unka emp_name, experience aur department nikalo.

select emp_name , experience , department from employees where experience between 3 and 7;

-- Q4. Jinki salary 40000 se 60000 ke beech hai, unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where  salary between 40000 and 60000;

-- Q5. Jinki age 25 se 30 ke beech nahi hai, unki complete information nikalo.

select * from employees where age not between 25 and 30;

-- Q6. Jinki salary 30000 se 50000 ke range ke bahar hai, unka emp_name aur salary nikalo.

select emp_name , salary from employees where salary not between 30000 and 50000;

-- Q7. Jinka experience 5 se 10 years ke beech hai, unki complete information nikalo.

select * from employees where experience between 5 and 10;

-- Q8. Jinki joining date 2020-01-01 se 2022-12-31 ke beech hai, unka emp_name, joining_date aur department nikalo.

select emp_name , joining_date , department from employees where joining_date between '2020-01-01' and '2022-12-31'; 

-- Q9. Jinki salary 35000 se 65000 ke beech hai aur unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where salary between 35000 and 65000;

-- Q10. Jinka experience 3 se 8 years ke range ke bahar hai, unka emp_name, experience aur salary nikalo

select emp_name , experience , salary from employees where experience not between 3 and 8;
