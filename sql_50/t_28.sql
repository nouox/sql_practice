# 查询所有学生的课程及分数情况（存在学生没成绩，没选课的情况）

select sc.SId, s.Sname, sc.score
from sc, Student s
where sc.SId=s.SId
