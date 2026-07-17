create schema greenwood_academy;
set search_path to greenwood_academy;

create table students(
student_id INT primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(1),
date_of_birth date,
class varchar(10),
city varchar(50)
);


create table subjects(
subject_id int primary key,
subject_name varchar(10) not null unique,
department varchar(50),
teacher_name varchar(100),
creits int
);



create table exam_results(
results_id int primary key,
student_id int not null,
subject_id int not null,
marks int not null,
exam_date date,
grade varchar(2)
);

 alter table students
 add column phone_number varchar(20);
 
 alter table subjects
 rename creits to credit_hours;
 
 alter table students
 drop column phone_number;
 
 insert into students ( student_id, first_name, last_name, gender,
 date_of_birth, class, city) values 
 (1, 'Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),
 (2, 'Brian', 'Ochieng', 'M', '2007-07-25', 'Form 4', 'Mombasa'),
 (3, 'Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
 (4, 'David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
 (5, 'Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
 (6, 'Felix', 'Otieno', 'M', '2009-09-14', 'Form 2', 'Eldoret'),
 (7, 'Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
 (8, 'Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
 (9, 'Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
 (10, 'James', 'Kariuki', 'M', '2008-08-17', 'Form 3', 'Nairobi');
 
 insert into subjects (subject_id, subject_name, department,teacher_name, credit_hours) values
 (1, 'Mathematics', 'Sciences', 'Mr. Njoroge', 4),
 (2, 'English', 'Languages', 'Ms. Adhiambo', 3),
 (3, 'Biology', 'Sciences', 'Ms. Otieno', 4),
 (4, 'History', 'Humanities', 'Mr. Waweru', 3),
 (5, 'Kiswahili', 'Languages', 'Ms. Nduta', 3),
 (6, 'Physics', 'Sciences', 'Mr. Kamande', 4),
 (7, 'Geography', 'Humanities', 'Ms. Chebet', 3),
 (8, 'Chemistry', 'Sciences', 'Ms. Muthoni', 4),
 (9, 'Computer Studies', 'Sciences', 'Mr. Oduya', 3),
 (10,'Business Studies', 'Humanities', 'Ms. Wangari', 3);
