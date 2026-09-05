select * from employees;

-- DQL — SELECT: 20 Questions

-- Basic SELECT
-- Q1. employees table ke saare columns aur saare records fetch karo.

select * from employees;
alter table  employees
add column department varchar(40);

-- Q2. Sirf emp_name column fetch karo.

 select emp_name from employees;
 
-- Q3. emp_name aur salary columns fetch karo.

select emp_name , salary from employees;

-- Q4. emp_id, emp_name aur city columns fetch karo.

select emp_id , emp_name , city from employees;

-- Q5. salary aur department columns fetch karo.

select salary , department from employees;


-- SELECT + Alias
-- Q6. emp_name column ko output mein Employee_Name naam se display karo.

select emp_name as employee_name from employees;

-- Q7. salary column ko output mein Employee_Salary naam se display karo.

select salary as employee_salary from employees;

-- Q8. emp_name aur salary dono ko aliases ke saath display karo:
-- emp_name → Employee , salary → Salary

select emp_name as employee , salary as Salary from employees;


-- SELECT + Calculation
-- Q9. Har employee ki salary ke saath salary + 5000 ka calculated result display karo.

select salary+5000 as salary from employees;

-- Q10. Har employee ki salary ke saath salary × 2 ka calculated result display karo.

select salary * 2 as salary from employees;

-- Q11. Har employee ki salary ka 10% calculate karke display karo.

select salary+(salary*10/100) as salary from employees;

-- Q12. Employee ka name aur salary ke saath salary + 10000 display karo

select emp_name , salary , salary + 10000 as salary from employees;

-- DISTINCT
-- Q13. employees table se unique cities fetch karo.

select  distinct  city  from employees;

-- Q14. employees table se unique departments fetch karo.

select distinct department from employees;

-- Q15. employees table se unique city aur department combinations fetch karo.

select distinct city , department from employees;

-- Mixed SELECT ⭐
-- Q16. emp_id, emp_name, salary fetch karo aur salary ko output mein Monthly_Salary naam do.

select emp_id , emp_name , salary as monthly_salary from employees;

-- Q17. emp_name, city aur department fetch karo.

select emp_name , city , department from employees;

-- Q18. Har employee ka emp_name aur salary ka 20% calculate karke Bonus naam se display karo.

select emp_name , salary*20/100 as bonus from employees;

-- Q19. Unique cities fetch karo aur city ka output name Employee_City rakho.

select distinct city as employee_city from employees;

-- Q20. ⭐ Interview-focused
-- emp_id, emp_name, salary, city fetch karo aur salary ka 10% calculate karke Tax_Amount naam se display karo.

select emp_id , emp_name , salary , city ,  (salary* 10/100) as tax_amount from employees;