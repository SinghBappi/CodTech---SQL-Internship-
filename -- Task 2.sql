-- Task 2
drop table employees;
-- droping the table 
create table employees(
    employee_id Number PRIMARY key,
    name VARCHAR(50),
    department VARCHAR(50),
    salary NUMBER,
    hire_date date
)
-- creating table 
INSERT into EMPLOYEES VALUES(1,'Amit','Sales',60000,TO_DATE('2025-06-07','YYYY-MM-DD'));
INSERT into EMPLOYEES VALUES(2,'Neha','Marketing',70000,TO_DATE('2021-06-10','YYYY-MM-DD'));
INSERT into EMPLOYEES VALUES(3,'Rahul','IT',80000,TO_DATE('2020-12-25','YYYY-MM-DD'));
INSERT into EMPLOYEES VALUES(4,'Priya','Finance',90000,TO_DATE('2019-09-30','YYYY-MM-DD'));
INSERT into EMPLOYEES VALUES(5,'Arjun','HR',75000,TO_DATE('2021-01-20','YYYY-MM-DD'));
INSERT into EMPLOYEES VALUES(6,'Sneha','IT',85000,TO_DATE('2018-11-10','YYYY-MM-DD'));
-- inserting values to table 

SELECT * from EMPLOYEES;

-- Salary Ranking Function
-- using window function
select employee_id,name,salary,rank() over (Order by salary desc ) as salary from EMPLOYEES;
-- salary ke basis per descending order hai

-- next is moving average using window function

SELECT employee_id,name,salary , AVG(Salary) OVER (order by hire_date ROWS BETWEEN 2 PRECEDING and CURRENT ROW) as moving_avg
from EMPLOYEES;
-- it will check trend 
-- har employee ke behind 2 employee ke saath salary nikelega


-- subquery
-- employees with above average salary
SELECT employee_id ,name,salary from EMPLOYEES where SALARY > (select avg(salary) from EMPLOYEES);
-- it will calculate average salary of company

-- Cte 
with high_earners as ( SELECT employee_id, name,department,salary from EMPLOYEES where salary > 75000) SELECT employee_id,name,department,salary , rank() over(Order By salary desc ) as  salary_rank from high_earners;


-- it will filter that 
-- it will count those employees who have more than ₹75000
-- and then it will run rank

-- highest paid employee
-- using subquery

SELECT employee_id,name,department,salary from EMPLOYEES e where salary=(select max(salary)from EMPLOYEES where department =e.DEPARTMENT);

-- done
