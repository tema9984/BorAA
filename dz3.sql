1.
SELECT student21.Name, 
student21.Surname, 
STU_HOB.HOB_ID,
HOBBIES.NAME
FROM student21, 
STU_HOB,
HOBBIES
WHERE STU_HOB.HOB_ID=HOBBIES.ID and student21.Nz= STU_HOB.Nz; 
2. 
SELECT * 
FROM 
(SELECT student21.Name, 
student21.Surname, 
stu_hob.hob_id, 
CASE 
WHEN date_finish is null THEN sysdate-stu_hob.date_start 
ELSE stu_hob.date_finish-stu_hob.date_start 
END AS status
from
student21, 
stu_hob 
WHERE student21.NZ=stu_hob.NZ 
GROUP BY date_finish, date_start, hob_id, name, surname 
ORDER BY status desc) 
WHERE rownum=1 
