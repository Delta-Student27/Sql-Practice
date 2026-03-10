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
select branch, count(*) from students group by branch;
select age , count(*) from students group by age;

select branch, count(*) from students group by branch having count(*)>1;
