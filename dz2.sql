1.__________________________________________________________________________________________________________________
SELECT n_group, COUNT(n_group)
FROM student21
GROUP BY n_group

2.__________________________________________________________________________________________________________________
SELECT MAX(score), n_group
FROM student21
GROUP BY n_group

3.__________________________________________________________________________________________________________________
SELECT count(surname),surname
FROM student21
GROUP BY surname

4.__________________________________________________________________________________________________________________
SELECT Extract(YEAR from date_birth),count(date_birth)
FROM student21
GROUP BY Extract(YEAR from date_birth) 

5.__________________________________________________________________________________________________________________
SELECT trunc(n_group,3), AVG(SCORE)
FROM student21
GROUP BY n_group

6.__________________________________________________________________________________________________________________
SELECT max(score), n_group
FROM student21
where n_group like '2%'
GROUP BY n_group

7.__________________________________________________________________________________________________________________
SELECT AVG(score) as avgscore, n_group
FROM student21
GROUP BY n_group
having avg(score)<=3.5
order by avgscore asc

8.__________________________________________________________________________________________________________________
Select * 
FROM (
      SELECT max(risk), name
      FROM hobby
      GROUP BY name 
	 )t
WHERE rownum<=3

9.__________________________________________________________________________________________________________________
SELECT n_group, count(n_z), max(score), avg(score), min(score)
FROM student21
GROUP BY n_group

????????????10.__________________________________________________________________________________________________________________
SELECT name, n_z, surname, score, n_group
FROM student21
where n_group like '2253'
ORDER BY score DESC FETCH FIRstudent21 1 ROWS ONLY

11.__________________________________________________________________________________________________________________
SELECT *
FROM(
     SELECT n_group, max(score) as ms
     FROM student21
     GROUP BY n_group
    ) t1,student21
WHERE student21.n_group=t1.n_group
      and ms=student21.score