1
Select * 
from student21
where  score  >=3 and score <=4
2
Select name, surname, score 
from student21
where  N_GROUP>=3000 and n_GROUP<4000
2
Select name, surname, score 
from student21
where  N_GROUP like'2___'
3
Select *
from student21 
where to_char(date_birth, 'RR') >=00 and to_char(date_birth, 'RR')<=20 
4
Select *
from student21 
where to_char(date_birth, 'mm')=:date_birth
5
Select *
from student21 
where to_char(date_birth, 'mm')= to_char(sysdate, 'mm')
6
Select *
from student21 
order by n_group ASC
7
Select *
from student21 
order by n_group ASC, surname asc
8
Select *
from student21 
where score >4
order by score desc
9
SELECT *
FROM student21
ORDER BY score DESC FETCH FIRST 5 ROWS ONLY
9
SELECT *
FROM
  (SELECT *
   FROM student21
   ORDER BY score DESC)
WHERE rownum <= 5
10
SELECT name,
CASE 
WHEN risk<=10 and risk>=8 THEN 'Очень высокий риск' 
when risk >=6 and risk <8 then 'Высокий риск'
when risk >=4 and risk <6 then 'средний риск'
when risk >=2 and risk <4 then 'низкий риск'
when risk <2 and risk>0 then 'минимальный риск'

END 
as risk 

FROM hobbies;
