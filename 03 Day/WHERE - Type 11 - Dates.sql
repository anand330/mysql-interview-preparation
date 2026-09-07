-- WHERE - Type 11 - Dates.sql
select * from employees;

-- Q1. 2023-01-15 ko join karne wale employee ki complete information nikalo.

select * from employees where joining_date = '2023-01-15';

-- Q2. 2020-01-01 ke baad join karne wale employees ki complete information nikalo.

select * from employees where joining_date > '2020-01-01';

-- Q3. 2020-01-01 se pehle join karne wale employees ka emp_name, joining_date aur department nikalo.

select emp_name , joining_date , department from employees where joining_date < '2020-01-01';

-- Q4. 2021-01-01 ke baad join karne wale employees ka emp_name, joining_date aur salary nikalo.

select emp_name , joining_date , salary from employees where joining_date>'2021-01-01';

-- Q5. 2020-01-01 se 2022-12-31 ke beech join karne wale employees ki complete information nikalo.

select * from employees where joining_date between '2020-01-01' and '2022-12-31';

-- Q6. 2015-01-01 se 2019-12-31 ke beech join karne wale employees ka emp_name, joining_date aur city nikalo.

select emp_name , joining_date , city from employees where joining_date between '2015-01-01' and '2019-12-31';

