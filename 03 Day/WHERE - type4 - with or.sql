select * from employees;

-- Q1. Delhi OR Mumbai city ke employees ki complete information nikalo.

select * from employees where city = 'delhi' or city = 'mumbai';

-- Q2. IT OR Finance department ke employees ki complete information nikalo.

select * from employees where department = 'it' or department = 'finance';

-- Q3. Male OR Female employees ka emp_name, gender aur city nikalo.

select emp_name , gender , city from employees where gender = 'male' or gender = 'female';

-- Q4. Jinki salary 30000 se less OR 60000 se greater hai, unki complete information nikalo.

select * from employees where salary < 30000 or salary > 60000;

-- Q5. Pune OR Chennai city ke employees ka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where city = 'pune' or city = 'chennai';

-- Q6. Jinki age 25 se less OR 35 se greater hai, unka emp_name, age aur city nikalo.

select emp_name , age , city from employees where age < 25 or age > 35 ;

-- Q7. HR OR Sales department ke employees ka emp_name, department aur salary nikalo.

select emp_name , department , salary from employees where department = 'hr' or department = 'sales';

-- Q8. Jinka experience 2 years se less OR 10 years se greater hai, unki complete information nikalo.

select * from employees where experience < 2 or experience > 10;

-- Q9. Delhi OR Bangalore city ke employees jinki salary 50000 se greater hai, unka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where ( city = 'delhi' or city = 'bangalore') and salary > 50000;

-- Q10. IT OR Marketing department ke employees jinki age 30 se greater hai, unka emp_name, age, department aur salary nikalo

select emp_name , age , department , salary from employees where ( department='it' or department = 'marketing') and age > 30;