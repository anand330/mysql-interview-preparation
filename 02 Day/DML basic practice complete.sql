-- Q1 — INSERT
--  employees table mein employee insert karo:
-- emp_id = 201,emp_name = Rahul , salary = 35000, city = Delhi

insert into employees 
values(201,'rahul', 35000, 'delhi');

-- Q2 — UPDATE
-- emp_id = 201 wale employee ki salary 40000 karo.

update employees
set salary = 40000
where emp_id=201;

-- Q3 — INSERT
-- Ek hi INSERT statement mein 2 employees add karo:
-- 202, Amit, 45000, Mumbai , 203, Priya, 50000, Pune

insert into employees
values(202 , 'amit' , 450000, 'mumbai'),(203 , 'priya',50000,'pune');

-- Q4 — UPDATE
-- Jin employees ki city Mumbai hai, unki salary 5000 se increase karo.

update employees 
set salary=salary+5000
where city = 'mumbai';

-- Q5 — DELETE
-- emp_id = 203 wale employee ka record delete karo.

delete from employees 
where emp_id = 203;

-- Q6 — INSERT
-- employees table mein employee add karo jiska:
-- emp_id = 204 , emp_name = Neha , salary = NULL , city = Bangalore

insert into employees
values(204 , 'neha' , null , 'bangalore');


-- Q7 — UPDATE
-- Jinki salary 40000 se kam hai, unki salary 40000 karo.

update employees
set salary = 40000
where salary < 40000;

-- Q8 — DELETE
-- Jinki city Pune hai, un sab employees ke records delete karo.

delete from employees 
where city='pune';

-- Q9 — UPDATE ⭐
-- emp_id = 202 wale employee ka name aur city ek hi UPDATE statement mein change karo:
-- name → Amit Sharma , city → Delhi

update employees
set emp_name = 'amit sharma' , city='delhi'
where emp_id=202;


-- Q10 — INSERT ⭐
-- Ek hi INSERT statement mein 3 employees add karo:
-- 205, Rohit, 55000, Chennai , 206, Anjali, 60000, Jaipur , 207, Karan, 48000, Noida

insert into employees
values(205,'rohit',55000, 'chennai'),(206,'anjali',60000,'jaipur'),(207,'karan',48000,'noida');