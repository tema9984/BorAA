1.____
SELECT student21.Name,
       student21.Surname,
       student21_hobbies.hobbies_id
FROM student21,
     student21_hobbies
WHERE student21.N_z= student21_hobbies.N_z;

????2.____
SELECT student21.Name,
       student21.Surname,
       student21_hobbies.hobbies_id,
       MAX(student21_hobbies.date_finish)-MIN(student21_hobbies.date_student21art)
FROM student21,
     student21_hobbies
WHERE student21.N_z= student21_hobbies.N_z
GROUP BY date_finish, date_student21art, hobbies_id, name, surname


SELECT student21.*
FROM student21, 
     student21_hobbies,t
WHERE student21.n_z=student21_hobbies.n_z
      and student21_hobbies.date_finish-student21_hobbies.date_student21art=
      (select max(date_finish-date_student21art)
      from student21_hobbies) t

3.____
SELECT student21.n_z,
       student21.Name,
       student21.Surname,
       student21.date_birth,
hobbies.name
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
      and student21_hobbies.hobbies_id=hobbies.id
      and student21.score>2.5
      and hobbies.risk>0.9

4.____
SELECT student21.n_z,
       student21.Name,
       hobbies.name,
       student21.Surname,
       date_finish-date_student21art
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
      and student21_hobbies.hobbies_id=hobbies.id
      and date_finish is not null

5.____
SELECT student21.n_z,
       student21.Name,
       hobbies.name,
       student21.Surname,
       Extract(year from sysdate)-Extract(YEAR from date_birth)
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
      and student21_hobbies.hobbies_id=hobbies.id
      and student21_hobbies.hobbies_id is not null
      and Extract(year from sysdate)-Extract(YEAR from date_birth)=20

6.____
SELECT student21.n_group,
       avg(score)
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
      and student21_hobbies.hobbies_id=hobbies.id
      and student21_hobbies.hobbies_id is not null
GROUP BY n_group

7.____
SELECT student21.n_z,
       student21.n_group,
       hobbies.name,
       hobbies.risk,
       MAX(MONTHS_BETWEEN(date_finish,date_student21art))
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
      and student21_hobbies.hobbies_id=hobbies.id
      and date_finish-date_student21art is not null
GROUP BY student21.n_z, n_group, hobbies.name, risk

8.
SELECT student21.n_z,
       hobbies.name
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
  and student21_hobbies.hobbies_id=hobbies.id
  and score=(SELECT MAX(score) FROM student21)

9.
SELECT hobbies.name,
       student21_hobbies.date_student21art,
       student21_hobbies.date_finish,
       student21.n_z,
       student21.score
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
  and student21_hobbies.hobbies_id=hobbies.id
  and score>2.5
  and score<4.5
  and date_finish is null
  and n_group like '2%'

?????????10.
SELECT LEFT(n_group,1),
       hobbies.name,
       student21_hobbies.date_student21art,
       student21_hobbies.date_finish
FROM student21,
     student21_hobbies,
     hobbies
WHERE student21.N_z= student21_hobbies.N_z
  and student21_hobbies.hobbies_id=hobbies.id
  and date_finish-date.student21art>0

???????11.
SELECT student21.n_group,
       AVG(student21.score)
FROM student21,t
WHERE COUNT(AVG(score)>4)/
                         (SELECT COUNT(n_z), 
                                 n_group 
                                 FROM student21 
                                 GROUP BY n_group) t
GROUP BY n_group

12.


????????13.
SELECT student21.n_z,
       student21.n_group,
       student21.name,
       student21.surname,
       student21.date_birth
FROM student21, student21_hobbies, hobbies
WHERE student21.N_z= student21_hobbies.N_z
  and student21_hobbies.hobbies_id=hobbies.id
  and NOT EXIstudent21S(SELECT * 
                 FROM student21_hobbies,student21 
                 WHERE student21.n_z=student21_hobbies.n_z)
ORDER BY n_group asc, date_birth desc

14.
SELECT student21.*
FROM (
      SELECT date_finish, date_student21art, YEAR(sysdate)-YEAR(date_student21art)
      FROM student21_hobbies
      WHERE data_finish is null
            and (YEAR(sysdate)-YEAR(data_student21art))>5
     ) t1, student21, hobbies
WHERE student21.N_z= t1.N_z
      and t1.hobbies_id=hobbies.id