SELECT n_group, COUNT(n_group)
FROM student21
GROUP BY n_group

2.
SELECT MAX(score), n_group
FROM student21
GROUP BY n_group

3.
SELECT count(surname),surname
FROM student21
GROUP BY surname

4.
SELECT Extract(YEAR from date_birth),count(date_birth)
FROM student21
GROUP BY Extract(YEAR from date_birth) 

5.
SELECT n_group, AVG(SCORE)
FROM student21
GROUP BY n_group

6.
SELECT max(score), n_group
FROM student21
where n_group like '2%'
GROUP BY n_group

7.
SELECT AVG(score) as score, n_group
FROM student21
GROUP BY n_group
having avg(score)<=3.5
order by score asc

8.
Select * 
FROM (
SELECT max(risk), name
FROM hobbies
group by name
order by max(risk) desc
 )
WHERE rownum<=3 


9.
SELECT n_group, count(nz), max(score), avg(score), min(score)
FROM student21
GROUP BY n_group 

10.
SELECT name, nz, surname, score, n_group
FROM student21
where n_group = :n_group
ORDER BY score DESC FETCH FIRST 1 ROWS ONLY

11.
SELECT *
FROM(
     SELECT n_group, max(score) as ms
     FROM student21
     GROUP BY n_group
    ) t1,student21
WHERE student21.n_group=t1.n_group
      and ms=student21.score
