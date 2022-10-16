# 查询每门课程被选修的学生数

select
    sc.CId,
    c.Cname,
    count(sc.CId) cnt
from SC, Course c
where sc.CId=c.CId
group by sc.CId,c.Cname
