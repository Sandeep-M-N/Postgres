CREATE DATABASE university_db;

Create a "students" table with the following fields:
student_id (Primary Key): Integer, unique identifier for students.
student_name: String, representing the student's name.
age: Integer, indicating the student's age.
email: String, storing the student's email address.
frontend_mark: Integer, indicating the student's frontend assignment marks.
backend_mark: Integer, indicating the student's backend assignment marks.
status: String, storing the student's result status.

CREATE TABLE students(
student_id int,
student_name VARCHAR(50),
age int,
email VARCHAR(255),
frontend_mark int,
backend_mark int,
status VARCHAR(300),
PRIMARY KEY (student_id)

);

Create a "courses" table with the following fields:
course_id (Primary Key): Integer, unique identifier for courses.
course_name: String, indicating the courses name.
credits: Integer, signifying the number of credits for the course.

CREATE TABLE cousrse(
course_id int,
course_name VARCHAR(250),
credits int,
PRIMARY KEY (course_id)
);
Create an "enrollment" table with the following fields:
enrollment_id (Primary Key): Integer, unique identifier for enrollments.
student_id (Foreign Key): Integer, referencing student_id in "Students" table.
course_id (Foreign Key): Integer, referencing course_id in "Courses" table.

CREATE TABLE enrollment(
enrollment_id int,
student_id int ,
course_id int ,
PRIMARY KEY(enrollment_id),
FOREIGN KEY(student_id)
 REFERENCES students(student_id),
 FOREIGN KEY (course_id)
 REFERENCES cousrse(course_id)
);


Insert the following sample data into the "students" table:


INSERT INTO students (student_id,student_name,age,email,frontend_mark,backend_mark)
VALUES(1,'Alice',22,'alice@example.com',55,57),
(2,'Bob',21,'bob@example.com',34,45),
(3,'Charlie',23,'charlie@example.com',60,59),
(4,'David',20,'david@example.com',40,49),
(5,'Eve',24,'newemail@example.com',45,34),
(6,'Rahim',23,'rahim@gmail.com',46,42);

Insert the following sample data into the "courses" table:

INSERT INTO cousrse(course_id,course_name,credits)
VALUES (1,'Next.js',3),
(2,'React.js',4),
(3,'Databases',3),
(4,'Prisma',3);

Insert the following sample data into the "enrollment" table:

INSERT INTO enrollment(enrollment_id,student_id,course_id)
VALUES(1,1,1),
(2,1,2),
(3,2,1),
(4,3,2);

Execute SQL queries to fulfill the ensuing tasks:
Query 1:
Insert a new student record with the following details:
Name: YourName
Age: YourAge
Email: YourEmail
Frontend-Mark: YourMark
Backend-Mark: YourMark
Status: NULL
INSERT INTO students (student_id,student_name,age,email,frontend_mark,backend_mark)
VALUES(7,'sandeep',22,'sandeep@gmail.com',44,44);

Query 2:
Retrieve the names of all students who are enrolled in the course titled 'Next.js'.
Sample Output:
student_name
Alice
Bob

SELECT student_name from students where student_id in (
select student_id from enrollment where course_id in (
select course_id from cousrse where course_name = 'Next.js'));
 student_name
--------------
 Alice
 Bob
(2 rows)

UPDATE students 
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
    SELECT MAX(frontend_mark + backend_mark)
    FROM students
);




DELETE FROM cousrse where course_id not in (
select course_id from enrollment );

.
Query 5:
Retrieve the names of students using a limit of 2, starting from the 3rd student.
Sample Output:
student_name
Charlie
David


select student_name from students 
offset 2 limit 2;
 student_name
--------------
 David
 Eve
 
 Query 6:
Retrieve the course names and the number of students enrolled in each course.

 select c.course_name,count(s.student_id) from cousrse c 
 inner join enrollment e on c.course_id = e.course_id
 inner join students s on e.student_id = s.student_id
 group by c.course_id;
  course_name | count
-------------+-------
 React.js    |     2
 Next.js     |     2
(2 rows)

Query 7:
Calculate and display the average age of all students.

select avg(age) as "average_age" from students;
average_age
---------------------
 22.1428571428571429
(1 row)
Query 8:
Retrieve the names of students whose email addresses contain 'example.com'.
select student_name from students where email like '%example.com';
 student_name
--------------
 Alice
 Bob
 David
 Eve
 Charlie
 
 
 Based on the above table data explain the concept along with  the example for below items
1.Explain the primary key and foreign key concepts in PostgreSQL.
primary key is used to find the uniquely from the table and foreign key is used to established the connection between the two tables
2.What is the difference between the VARCHAR and CHAR data types?
varchar datatype contain all characters char datatype also contain all characters varchare variable length allocation Char datatype use fixed length allocation
3.Explain the purpose of the WHERE clause in a SELECT statement.
Where: where clause is used to filter the records and it was execute row by row
select: select clause is used to display the records according to the conduction 
4.What are the LIMIT and OFFSET clauses used for?
limit is used to give the limited rows according to number you enter
 offset is used for which row you want to start the record data
5.How can you perform data modification using UPDATE statements?
 Syntax: update table_name set colomn_name = “values” (or) update table_name set coloum_name = “values” where conduction
 6.What is the significance of the JOIN operation, and how does it work in PostgreSQL?
in postgresql we have joins
● inner join ● left outer join ● right outer join ● full outer join ● cross join ● self join
7.Explain the GROUP BY clause and its role in aggregation operations.
group by clause is used to group the records according to the column name and aggregation function for the example we can use the avg() function to aggregation function
8.How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
 syntax: select count(*), avg(age), sum(age) from students;
 9.What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
 Improves query performance by reducing the number of data pages PostgreSQL needs to read. Speeds up data retrieval operations
 10.Explain the concept of a PostgreSQL view and how it differs from a table.
by using the views we can reduce the code size and code efficiency  



























