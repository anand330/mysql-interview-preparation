create database company;
use company;
create table employees(
         emp_id int ,
         emp_name varchar(40),
         salary int , 
         city varchar(50)
         );
         
-- Q1. employees table mein ek employee insert karo:
-- emp_id = 101 , emp_name = Rahul , salary = 30000 , city = Delhi

insert into employees(emp_id , emp_name , salary , city )
values (101 , 'rahul' , 3000, 'delhi');

-- Q2. employees table mein ek employee insert karo:
-- emp_id = 102, emp_name = Amit , salary = 35000 , city = Mumbai

insert into employees (emp_id , emp_name , salary , city )
values(102 ,'amit' , 35000 , 'mumbai');

-- Q3. employees table mein ek employee insert karo:
-- emp_id = 103,emp_name = Priya , salary = 40000 , city = Pune

insert into employees 
values(103 , 'priya' , 40000,'pune');

-- Q4. employees table mein 2 employees ek hi INSERT statement mein insert karo:
-- 104, Neha, 45000, Bangalore , 105, Rohit, 50000, Chennai

insert into employees
values(104 ,'neha' , 45000, 'bangalore'),(105,'rohit' , 50000, 'chennai');

-- Q5. employees table mein sirf emp_id aur emp_name insert karo:
-- emp_id = 106 , emp_name = Karan

insert into employees(emp_id , emp_name)
values(106,'karan');

-- Q6. Column names explicitly specify karke employee insert karo:
-- emp_id = 107 , emp_name = Anjali , salary = 55000 , city = Jaipur

insert into employees(emp_id , emp_name , salary , city)
values(107 , ' anjali' , 55000 , ' jaipur');


-- Q7. employees table mein 3 employees single INSERT statement se insert karo:
-- 108, Suresh, 32000, Delhi , 109, Pooja, 38000, Mumbai , 110, Arjun, 42000, Pune

insert into employees
values(108 , 'suresh' , 32000, 'delhi'),(109,'pooja' , 38000, 'mumbai'),(110,'arjun' , 42000 ,'pune');


-- Q8. employees table mein employee insert karo jiska city NULL ho:
-- emp_id = 111 , emp_name = Vikash , salary = 30000

insert into employees (emp_id , emp_name , salary)
values(111 , 'vikash' , 30000);

select * from employees;

-- Q9. employees table mein ek employee insert karo jiska salary NULL ho:
-- emp_id = 112 , emp_name = Meena , city = Kolkata

insert into employees(emp_id , emp_name , city )
values (112 , 'emp_name' , 'kolkata');

-- Q10. ⭐ Interview-focused
-- employees table mein multiple rows insert karo aur column names explicitly specify karo:
-- 113, Riya, 48000, Noida , 114, Varun, 52000, Gurgaon  , 115, Simran, 60000, Delhi

insert into employees
values(113,'riya',48000,'noida') , (114 ,'varun' , 52000 , 'gurgaon') , (115 , 'simran' , 60000 , 'delhi');

select * from employees;