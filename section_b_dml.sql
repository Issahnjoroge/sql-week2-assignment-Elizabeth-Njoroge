alter table subjects
alter column subject_name type varchar(30);



insert into exam_results (results_id, student_id, subject_id, marks, exam_date, grade)
values
  (1, 1, 1, 78, '2024-03-15', 'B'),
  (2, 1, 2, 85, '2024-03-16', 'A'),
  (3, 2, 1, 92, '2024-03-15', 'A'),
  (4, 2, 3, 55, '2024-03-17', 'C'),
  (5, 3, 2, 49, '2024-03-16', 'D'),
  (6, 3, 4, 71, '2024-03-18', 'B'),
  (7, 4, 1, 88, '2024-03-15', 'A'),
  (8, 4, 6, 63, '2024-03-19', 'C'),
  (9, 5, 5, 39, '2024-03-20', 'F'),
  (10, 6, 9, 95, '2024-03-21', 'A');


select count (*)as student_count from students; 
select count (*) as subject_count from subjects;
select count (*) as results from exam_results;


update students
set city = 'Nairobi'
where student_id =5;


update exam_results
set marks ='59'
where results_id = 5;


delete from exam_results
where results_id = 9;
