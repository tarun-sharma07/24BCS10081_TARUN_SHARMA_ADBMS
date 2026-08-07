Select department, count(Case when Marks >80 Then 1 Else NULL end) as Dept_HighScore_Count from student group by department;
