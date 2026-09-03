-- Q1. company naam ka database create karo.
create database company;
use company;
-- Q2. employees naam ki table create karo jisme:
-- emp_id → INT
-- emp_name → VARCHAR(50)
-- salary → INT
-- city → VARCHAR(30)
create table employees(
         emp_id int ,
         emp_name varchar(30),
         salary int,
         city varchar(50)
         );

-- Q3. employees table mein department naam ka VARCHAR(50) column add karo.

alter table employees
add column department varchar(50);

-- Q4. employees table ke salary column ko DECIMAL(10,2) mein modify karo.

alter table employees
modify salary decimal(10,2);

-- Q5. employees table mein emp_id ko PRIMARY KEY banao.

alter table employees
add primary key(emp_id);

-- Q6. employees table ke city column ka naam location karo.

alter table employees
rename column city to location;

-- Q7. employees table mein joining_date naam ka DATE column add karo.

alter table employees
add column joining_date date;

-- Q8. employees table se joining_date column remove karo.

alter table employees
drop column joining_date;

-- Q9. employees table ka naam employee_details karo.

rename table employees to employee_details;

-- Q10. employee_details table ke saare records remove karo, lekin table structure preserve rakho.

truncate table employee_details;

-- Q11. employee_details table mein email naam ka VARCHAR(100) column add karo.

alter table employee_details 
add column email varchar(100);

-- Q12. email column par UNIQUE constraint add karo.

alter table employee_details
add unique(email);

-- Q13. employee_details table mein status naam ka VARCHAR(20) column add karo, jiska default value 'Active' ho.

alter table employee_details
add column status varchar(20) default 'active';

--  Q14. employee_details table ko completely remove karo.

drop table employee_details;

-- Q15. students naam ki table create karo jisme:
-- student_id → INT PRIMARY KEY , student_name → VARCHAR(50) NOT NULL , email → VARCHAR(100) UNIQUE  , age → INT

create table students(
     student_id int primary key , 
     student_name varchar(50) not null ,
     email varchar(100) unique,
     age int
     );
     
-- Q16. students table ke student_name column ko VARCHAR(100) mein modify karo.

alter table students
modify student_name varchar(100);

-- Q17. students table ka naam student_details karo.

rename table students to student_details;

-- Q18. student_details table ke saare records remove karo, lekin structure preserve rakho.

truncate table student_details;

-- Q19. student_details table ko completely remove karo.

drop table student_details;

-- Q20. company database ko completely remove karo.

drop database company;