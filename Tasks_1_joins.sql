 create table departments (dept_id Number PRIMARY key,dept_name varchar(22)); -- created table 
 select * from departments; -- fetching all data from table departments , it does not shows Anything because it's empty

 -- let's insert data
insert into departments(DEPT_ID,DEPT_NAME) VALUES(1,'HR')
insert into departments(DEPT_ID,DEPT_NAME) VALUES(2,'IT')
insert into departments(DEPT_ID,DEPT_NAME) VALUES(3,'Finance')
insert into departments(DEPT_ID,DEPT_NAME) VALUES(4,'Marketing')

 select * from departments; -- it will show data

--  let's create employees table implementing all joins

create table employees (emp_id Number PRIMARY key,emp_name varchar(22),dept_id Number)
-- it's already exisits
-- we will drop it, then recreate it;
drop table employees;

-- dropped means deleted from database;
create table employees (emp_id Number PRIMARY key,emp_name varchar(22),dept_id Number)
-- table employees created


insert into employees( emp_id,emp_name,dept_id) values (1000,'Bappi',1);
-- value inserted successfully
select * from employees;

insert into employees( emp_id,emp_name,dept_id) values (1001,'Rajesh',2);
insert into employees( emp_id,emp_name,dept_id) values (1002,'Kishan',3);
insert into employees( emp_id,emp_name,dept_id) values (1003,'Aryaan',4);
insert into employees( emp_id,emp_name) values (1004,'Yash');

-- we insert a empty dept id for implementing right join;

-- 1 Inner Join

select e.emp_name,d.dept_name
from employees e 
inner join departments d 
on d.dept_id = e.dept_id;

-- it will shows common of both table employee and department , hence we did not see yash because he does not carry dept id

-- 2 Left Join

select e.emp_name,d.dept_name
from employees e 
left join departments d 
on e.dept_id = d.dept_id;

-- it shows whole table of employees because the it covers the common between dpartment and employees ;
-- and except department table 
-- employees   /    department 
-- it will cover common and left table means employees
-- if we replace both the sides it will changes the results

select e.emp_name,d.dept_name
from departments d 
left join employees e 
on e.dept_id = d.dept_id;

-- yeah it shows different

-- Right join 

insert into employees(emp_id,dept_id) values(6,4)
select * from employees;
-- name is empty but it has dept id 
select e.emp_name,d.dept_name
from employees e 
right join departments d 
on e.dept_id = d.dept_id;

-- it shows empty one too
-- because it covers right table means deparment table and common side too which include some part of employees table

-- Full Outter Join

select e.emp_name,d.dept_name
from employees e 
full outer join departments d 
on e.dept_id = d.dept_id;

-- it will return all the values present in both tables
-- done 
-- here's all the types finished










-- 1. 
