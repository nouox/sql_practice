# 查询任何一门课程成绩在 70 分以上的姓名、课程名称和分数

select s.Sname, c.Cname, sc.score
from sc, Student s, Course c
where score>70 and sc.SId=s.SId and sc.CId=c.CId
