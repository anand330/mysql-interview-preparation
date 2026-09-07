-- Type 8 — IN / NOT IN

select * from employees;

-- Q1. Delhi, Mumbai aur Pune city ke employees ki complete information nikalo.

select * from employees where city in ('delhi','mumbai','pune');

-- Q2. IT, HR aur Finance department ke employees ka emp_name, department aur salary nikalo.

select emp_name , department , salary from employees where department in ('it','hr','finance');

-- Q3. Male aur Female gender wale employees ka emp_name, gender aur city nikalo.

select emp_name , gender , city from employees where gender in ('male','female');

-- Q4. Delhi aur Mumbai ko chhodkar baaki cities ke employees ki complete information nikalo.

select * from employees where city not in ('delhi','mumbai');

-- Q5. IT aur Sales department ko chhodkar baaki departments ke employees ka emp_name, department aur salary nikalo.

select emp_name , department , salary from employees where department not in ('it','sales');

-- Q6. Chennai, Kolkata aur Jaipur city ke employees ka emp_name, city aur salary nikalo.

select emp_name , city , salary from employees where city in ('chennai','kolkata','jaipur');

-- Q7. HR, Finance aur Marketing department ke employees ki complete information nikalo.

select * from employees where department in ('hr','finance','marketing');

-- Q8. Delhi, Pune aur Bangalore ko chhodkar baaki cities ke employees ka emp_name, city aur department nikalo.

select emp_name , city , department from employees where city not in ('delhi','pune','bangalore');

-- Q9. IT, Finance aur Sales department ke employees jinka emp_name, salary aur department chahiye — sirf IN use karo.

select emp_name , salary , department from employees where department in ('it' , 'finance' , 'sales');

-- Q10. HR aur Marketing department ko chhodkar baaki departments ke employees ka emp_name, department aur experience nikalo.

select emp_name , department , experience from employees where department not in ('hr','marketing');