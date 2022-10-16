# 检索至少选修两门课程的学生学号

select sid
from SC
group by SId
having count(CId)>=2
