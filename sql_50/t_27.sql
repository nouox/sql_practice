# 查询课程名称为「数学」，且分数低于 60 的学生姓名和分数

select sc.SId, s.Sname
from SC, Course c, Student s
where c.Cname='数学' and sc.CId=c.CId and score<60 and sc.SId=s.SId
