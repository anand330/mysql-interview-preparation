select * from employees;

-- Q1. Jo employees IT department mein nahi hain, unki complete information nikalo.

select * from employees where department != 'it';

-- Q2. Jo employees Delhi city mein nahi hain, unka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where city != 'delhi';

-- Q3. Jo employees Female nahi hain, unki complete information nikalo.

select * from employees where gender != 'female';

-- Q4. Jinki salary 50000 ke equal nahi hai, unka emp_name aur salary nikalo.

select emp_name , salary from employees where salary != 50000;

-- Q5. Jinki age 30 ke equal nahi hai, unki complete information nikalo.

select * from employees where age != 30;

-- Q6. Jo employees Finance department mein nahi hain, unka emp_name, department aur salary nikalo.

select emp_name department , salary from employees where department != 'finace';

-- Q7. Jo employees Mumbai city mein nahi hain, unka emp_name, city aur department nikalo.

select emp_name , city , department from employees where city != 'mumbai';

-- Q8. Jinka experience 5 years ke equal nahi hai, unka emp_name, experience aur salary nikalo.

select emp_name , experience , salary from employees where experience != 5;

-- Q9. Jo employees IT department mein nahi hain aur jinki salary 50000 se greater hai, unki complete information nikalo.

select * from employees where department != 'it'  and salary > 50000;

-- Q10. Jo employees Delhi city mein nahi hain aur jinki age 30 se less hai, unka emp_name, age, city aur salary nikalo.

select emp_name , age , city , salary from employees where city != 'delhi' and age < 30;