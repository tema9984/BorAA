SELECT student21.Name, 
student21.Surname, 
STU_HOB.HOB_ID,
HOBBIES.NAME
FROM student21, 
STU_HOB,
HOBBIES
WHERE STU_HOB.HOB_ID=HOBBIES.ID and student21.Nz= STU_HOB.Nz; 
