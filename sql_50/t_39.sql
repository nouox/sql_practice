# 查询选修了全部课程的学生信息

select sid
from SC
group by SId
having count(CId)=(
    select count(CId)
    from Course
    )
