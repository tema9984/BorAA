Select * 
from student21
where  score  >=3 and score <=4

Select name, surname, score 
from student21
where  N_GROUP>=3000 and n_GROUP<4000

Select name, surname, score 
from student21
where  N_GROUP like'2___'

Select *
from student21 
where to_char(date_birth, 'RR') >=00 and to_char(date_birth, 'RR')<=20 

Select *
from student21 
where to_char(date_birth, 'mm')=:date_birth

Select *
from student21 
where to_char(date_birth, 'mm')= to_char(sysdate, 'mm')

Select *
from student21 
order by n_group ASC

Select *
from student21 
order by n_group ASC, surname asc

Select *
from student21 
where score >4
order by score desc

SELECT *
FROM student21
ORDER BY score DESC FETCH FIRST 5 ROWS ONLY

SELECT *
FROM
  (SELECT *
   FROM student21
   ORDER BY score DESC)
WHERE rownum <= 5


SELECT *
FROM hobbies
case 
when risk >= 8 then 'очень высокий'
when risk >= 6 and risk <8
end 

SELECT name,
CASE risk
WHEN 10 THEN 'Очень высокий риск' 
WHEN 9 THEN 'Очень высокий риск' 
WHEN 8 THEN 'Очень высокий риск' 
WHEN 7 THEN 'Высокий риск' 
WHEN 6 THEN 'Высокий риск' 
WHEN 5 THEN 'Средний риск' 
WHEN 4 THEN 'Средний риск' 
WHEN 3 THEN 'Низкий риск'
WHEN 2 THEN 'Низкий риск'
WHEN 1 THEN 'Очень низкий риск'

END 
as risk 

FROM hobbies;
