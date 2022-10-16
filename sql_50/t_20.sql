# 查询出只选修两门课程的学生学号和姓名

select
    t.sid,
    s.Sname
from (
    select
    SId,
    count(CId) cnt
from SC
group by SId
     ) t, Student s
where t.SId=s.SId and t.cnt=2
