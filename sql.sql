create database college;
use college;
create table students(
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT,
branch VARCHAR(50),
email VARCHAR(100) UNIQUE,
created_at DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO students(id,name,age,branch,email) VALUES
(1,'Tanushri',20,'computer science','tanushri@gmail.com'),
(2,'krishna',20,'cybersecurity','krishna@gmail.com'),
(3,'radhe',20,'cybersecurity','radhe@gmail.com'),
(4,'vrinda',21,'computer science','vrinda@gmail.com'),
(5,'sakshi','20','computer science','sakshi@gmail.com')

SELECT * from students;
UPDATE students 
SET branch = 'datascience'
WHERE id=4;

DELETE from students
WHERE id = 4;

create table teachers(
id INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
subject VARCHAR(50),
email VARCHAR(50) UNIQUE
)

INSERT INTO teachers(id,name,subject,email) VALUES
(1,'krishna','maths','radhe@gmail.com'),
(2,'radhe','science','krishna@gmail.com'),
(3,'vitthal','physics','rukmini@gmail.com'),
(4,'Rukmini','biology','vitthal@gmail.com'),
(5,'Mahade','chemistry','uma@gmail.com'),
(6,'Parvati ','Law','mahadev@gmail.com');
select * from teachers;

UPDATE teachers
SET subject ='dharma'
WHERE id = 5;


select name , branch from students;
select * from students where age <= 20
select * from students where branch ='computer science'

INSERT INTO students(id,name,age,branch,email) VALUES
(4,'Harshali',22,'IT','tanu@gmail.com'),
(6,'roshani',19,'AIML','borase@gmail.com')
select * from students 
where age between 18 and 22

select * from students
where branch IN('IT','computer science')

select * from students
where name LIKE 'T%';

select * from students
where name LIKE '%a';

select * from students
where name LIKE '%sh%'

select * from students 
ORDER BY age ASC;

SELECT * FROM students
ORDER BY name ASC;

SELECT * FROM students
ORDER BY name DESC;

SELECT * FROM students
ORDER BY age DESC;

SELECT * FROM students
ORDER BY branch ASC, age DESC;
select count(*) from students;
select count(email) from students;
select sum(age) from students;

select sum(id) from students;

select avg(age) from students;

create database joins;
use joins;

create table students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
course_id INT
);
create table courses(
course_id INT primary key,
course_name varchar(5)
);
alter table courses MODIFY course_name VARCHAR(50);
create table trainers(
trainer_id INT Primary key,
trainer_name varchar(50),
course_id int
);
INSERT INTO students VALUES
(1, 'Amit', 101),
(2, 'Neha', 102),
(3, 'Raj', 101),
(4, 'Simran', NULL),
(5, 'John', 103);

INSERT INTO courses VALUES
(101, 'SQL'),
(102, 'Python'),
(103, 'Java'),
(104, 'Excel');

INSERT INTO trainers VALUES
(1, 'Ravi', 101),
(2, 'Meena', 102),
(3, 'Karan', 103);
select * from students;
select * from train;
select * from courses;
select s.name,c.course_name
from students s 
INNER JOIN courses c on s.course_id=c.course_id;

select s.name , c.course_name
from students s 
LEFT JOIN courses c ON s.course_id=c.course_id;

select s.name,c.course_name
from students s
RIGHT JOIN courses c ON s.course_id=c.course_id;

select name from students where course_id is null;

select c.course_name
from courses c 
left join students s on c.course_id = s.course_id
where s.student_id is null;

select s.name,c.course_name,t.trainer_name
from students s
INNER JOIN courses c ON s.course_id=c.course_id
INNER JOIN trainers t on c.course_id=t.course_id;

select t.trainer_name,c.course_name
from trainers t 
INNER JOIN courses c ON t.course_id=c.course_id;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE,
    age INT,
    city VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'John', 'Smith', 'Sales', 45000, '2019-03-15', 29, 'Mumbai', NULL),
(2, 'Priya', 'Sharma', 'IT', 65000, '2020-07-22', 34, 'Pune', 1),
(3, 'Amit', 'Kumar', 'IT', 58000, '2018-01-10', 41, 'Nashik', 1),
(4, 'Sara', 'Khan', 'HR', 42000, '2021-05-30', 26, 'Mumbai', 1),
(5, 'Rahul', 'Verma', 'Sales', 51000, '2017-11-05', 38, 'Delhi', 1),
(6, 'Neha', 'Patel', 'IT', 72000, '2022-02-14', 30, 'Nashik', 2),
(7, 'Vikram', 'Singh', 'Finance', 60000, '2016-09-01', 45, 'Pune', NULL),
(8, 'Anjali', 'Mehta', 'Finance', 39000, '2023-01-19', 24, 'Mumbai', 7),
(9, 'Karan', 'Joshi', 'Sales', 48000, '2020-12-25', 33, 'Delhi', 1),
(10, 'Divya', 'Reddy', 'HR', NULL, '2019-08-08', 28, 'Nashik', 4);
-- where clause 
select * from employees where department = 'IT';
select * from employees where salary > 50000;
select * from employees where not department = 'IT';
select * from employees where age >=30;

-- AND/OR
select * from employees where department = 'IT' AND salary > 60000;
select * from employees where city = 'Mumbai' OR city = 'Delhi';
select * from employees where department = 'Sales' AND age > 30 AND salary > 50000;

-- Between 
select * from employees where salary Between 45000 AND 60000;
select * from employees where hire_date Between 2019-01-01 AND 2021-12-31;

-- In/Not In
select * from employees where department='IT'OR'HR' OR 'Finance';
select * from employees where not department = 'Nashik' OR 'Pune';

-- LIKE
select * from employees where  first_name LIKE 'A%';
select * from employees where last_name like '%a';
select * from employees where city like '%u%';

-- null handling
select * from employees where  manager_id is null;
select * from employees where salary is null;

select * from employees where department = 'IT' OR 'Finance' AND salary > 40000 AND hire_date =2018-01-01;
select * from employees where first_name like 'S%' AND not city='Mumbai';

select * from employees where department='Sales' order by salary desc;
select * from employees order by salary desc limit 3 offset 2;

-- order by 
select * from employees order by salary asc;
select * from employees order by salary desc;
select * from employees order by first_name asc;
select * from employees order by hire_date asc;
select * from employees order by department asc , salary desc;
select * from employees order by city asc , age asc;
select * from employees where department = 'IT' order by salary desc;
select * from employees where hire_date = '2019-01-01' order by hire_date asc;

-- limit 
select * from employees order by salary desc limit 3;
select * from employees order by age asc limit 3;
select * from employees order by emp_id asc limit 5;
select * from employees order by salary desc limit 2 offset 1;
select * from employees order by salary desc limit 3 offset 3;
select * from employees where salary is null order by salary asc;
select * from employees where salary is null order by salary desc;
select * from employees where department = 'Sales' order by salary desc limit 2;
select * from employees order by hire_date desc limit 3;
select * from employees where not department ='IT' order by salary desc limit 3;
select branch, count(*) from students group by branch;
select age , count(*) from students group by age;

select branch, count(*) from students group by branch having count(*)>1;

create table employee(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
salary INT
);
select * from employee;
select * from departments;
select * from locations;
create table departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

create table locations(
dept_id INT,
city VARCHAR(50)
);

insert into employee values(1,'Amit',101,50000),(2,'Ram',102,60000),(3,'Raj',101,55000),(4,'Simran',103,70000),(5,'john',Null,40000);
insert into departments values(101,'HR'),(102,'IT'),(103,'Finance'),(104,'Marketing');
insert into locations values(101,'Pune'),(102,'Mumbai'),(103,'Delhi');
SELECT *
FROM employee e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

select e.name,d.dept_name
from employee e
LEFT JOIN departments d
ON e.dept_id=d.dept_id;

select * 
from employee e
RIGHT JOIN departments d ON e.dept_id=d.dept_id;

select e.name, d.dept_name from employee e INNER JOIN departments d ON e.dept_id=d.dept_id;
select e.name ,d.dept_name from employee e right JOIN departments d ON e.dept_id=d.dept_id;
select e.name,d.dept_name, l.city from employee e INNER JOIN departments d ON e.dept_id=d.dept_id INNER JOIN locations l ON d.dept_id=l.dept_id;

select department ,count(*) from employees group by department;
select department ,SUM(salary) from employees group by department;
select department, avg(salary) from employees group by department;
select department , MIN(salary) from employees group by department;
select department, MAX(salary) from employees group by department;
select department from employees group by department having count(*) > 1;
select department from employees group by department having avg(salary)> 50000;
select department from employees group by department having sum(salary) between 6000 and 50000;
select department from employees group by department order by employee_count  desc;
select department from employees group by department having count(*) > 2 order by avg(salary) desc;
select department,count(*) from employees group by department;
select city , count(*) from employees group by city;
select department,avg(salary) from employees group by department;
select department , sum(salary) from employees group by department;
select department , min(hire_date) from employees group by department;
select city from employees group by city having count(*)=2; 
select department from employees group by department having avg(salary) > 55000;
select department from employees group by department having MAX(salary) > 10000;
select manager_id from employees group by manager_id having count(*) > 2;
select department from employees group by department having avg(age) < 30;
select department ,count(*) from employees where hire_date > '2020-01-01' group by department; 
select department from employees group by department having count(*) > 2 order by avg(salary) desc;

