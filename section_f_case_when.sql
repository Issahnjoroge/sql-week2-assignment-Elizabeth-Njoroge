select exam_results,
  case
  when marks >=80 then 'Distinction'
  when marks >=60 then 'Merit'
  when marks >=40 then 'Pass'
  else'Fail'
  end column_performance
  from exam_results;


select students,
case 
when class = 'Form 3' or class = 'Form 4' then 'Senior'	
when class = 'Form 2' or class = 'Form 1' then 'Junior'
end student_level
from students;
