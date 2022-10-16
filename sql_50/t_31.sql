# 查询课程编号为 01 且课程成绩在 80 分以上的学生的学号和姓名

select sc.SId, s.Sname
from SC, Student s
where sc.score>80 and sc.SId=s.SId and sc.CId='01'
