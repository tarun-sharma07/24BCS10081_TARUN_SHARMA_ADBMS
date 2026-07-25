# Experiment 3

## Experiment-3.1

<img width="1598" height="815" alt="image" src="https://github.com/user-attachments/assets/2c6b6598-09aa-4326-88b7-89dc27ff701e" />
<img width="786" height="269" alt="image" src="https://github.com/user-attachments/assets/53919bc4-6a11-4fe2-ab62-f8e79ec6e66c" />

## SQL Query
Select department,
count(Case when Marks >80 Then 1 Else NULL end) as Dept_HighScore_Count
from student
group by department;

## Experiment 3.2
Aim: Count the number of students in the city.

SELECT COUNT(*) AS Delhi_Students
FROM Student
WHERE city = 'Delhi';
 make a table including attributes like sid sname Marks city then find the count the number of students from delhi
