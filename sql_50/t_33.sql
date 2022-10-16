# 成绩不重复，查询选修「张三」老师所授课程的学生中，成绩最高的学生信息及其成绩

select sc.SId, s.Sname, sc.score
from SC, Student s
where CId in (
    select c.CId
    from Teacher t, Course c
    where t.Tname='张三' and c.TId=t.TId
    ) and sc.SId=s.SId
order by score desc
limit 0,1
