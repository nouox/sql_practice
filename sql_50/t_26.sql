# 查询平均成绩大于等于 85 的所有学生的学号、姓名和平均成绩

select
    sc.SId,
    s.Sname,
    avg(sc.score) avgScore
from SC, Student s
where sc.SId=s.SId
group by sc.SId, s.Sname
having avgScore>=85
