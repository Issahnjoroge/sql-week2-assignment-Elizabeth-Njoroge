select * from exam_results
where marks between '50' and '80';


select * from exam_results
where exam_date between '2024-03-15' and '2024-03-18';

select * from students
where city in('Nairobi', 'Mombasa', 'Kisumu');

select * from students
where class not in ('Form 2','Form3');

select * from students
where first_name like ('A%') or first_name like ('E%');

select * from subjects
where subject_name like ('%Studies%');
