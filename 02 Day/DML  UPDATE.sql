select * from employees;

-- Q1. emp_id = 101 wale employee ki salary ko 35000 karo.
 
 update employees
 set salary = 35000
 where emp_id = 101;
 
-- Q2. emp_id = 102 wale employee ka city Pune karo.

update employees
set city='pune'
where emp_id =102;

-- Q3. emp_id = 103 wale employee ka name Priya Sharma karo.
 
update employees
set emp_name = 'priya'
where emp_id=103;

-- Q4. emp_id = 104 wale employee ki salary 5000 se increase karo.

update employees 
set salary=salary+5000
where emp_id = 104;

-- Q5. emp_id = 105 wale employee ka salary 60000 aur city Bangalore karo.

update employees
set salary = 60000 , city = 'bangalore'
where emp_id =105;

-- Q6. Jin employees ki city Delhi hai, unki salary 10% increase karo.

update employees 
set salary = salary + (salary*10/100)
where city='delhi';

-- Q7. Jin employees ki salary 40000 se kam hai, unki salary 40000 karo.

update employees
set salary = 40000
where salary < 40000;


--  Q8. Mumbai city mein rehne wale employees ki city ko Navi Mumbai karo.

update employees
set city = 'navi mumbai'
where city = 'mumbai';

-- Q9. ⭐ emp_id = 110 wale employee ki salary 20% increase karo.

update employees
set salary = salary+(salary*20/100)
where emp_id=110;


-- Q10. ⭐ Interview-focused
-- emp_id = 115 wale employee ka name, salary aur city ek hi UPDATE statement mein change karo:
-- name → Aman Verma , salary → 65000, city → Delhi

update employees 
set emp_name = 'aman verma' , salary=65000 , city='delhi'
where emp_id = 115;