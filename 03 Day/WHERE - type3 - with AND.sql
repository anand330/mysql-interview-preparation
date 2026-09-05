-- Type 3 — WHERE with AND 
 select * from employees;
 
 -- Q1. IT department mein kaam karne wale aur jinki salary 40000 se greater hai, unki complete information nikalo.

select * from employees where department = 'it' and salary > 40000;

-- Q2. Delhi city ke employees jinki age 30 se less hai, unka emp_name, age aur city nikalo.

select emp_name , age , city from employees where city = 'delhi' and age<30;

-- Q3. Female employees jinki salary 40000 se greater hai, unka emp_name, gender aur salary nikalo.

select emp_name , gender , salary from employees where gender = 'female' and salary > 40000; 

-- Q4. Finance department ke employees jinka experience 5 years se greater hai, unki complete information nikalo.

select * from employees where department = 'fiance' and experience > 5;

-- Q5. Mumbai city ke employees jinki salary 50000 se greater hai, unka emp_name, salary aur city nikalo.

select emp_name , salary , city from employees where city = 'mumbai' and salary > 50000;

-- Q6. IT department ke employees jinki age 25 se greater ya equal hai, unka emp_name, age aur department nikalo.

select emp_name , age , department from employees where department = 'it' and age >= 25;

-- Q7. Male employees jinki salary 45000 se greater ya equal hai, unka emp_name, salary aur gender nikalo.

select emp_name , salary , gender from employees where gender = 'male' and salary >= 45000;

-- Q8. Pune city ke employees jinka experience 4 years se greater ya equal hai, unki complete information nikalo.

select * from employees where city = 'pune' and experience >= 4;

-- Q9. HR department ke employees jinki age 28 se less hai, unka emp_name, age aur salary nikalo.

select emp_name , age , salary from employees where department = 'hr' and age < 28;

-- Q10. Delhi city ke IT department employees jinki salary 35000 se greater hai, unka emp_name, salary, city aur department nikalo.

select emp_name , salary , city , department from employees where city = 'delhi' and department = 'it' and salary > 35000;