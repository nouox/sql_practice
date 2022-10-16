# 求每门课程的学生人数

select count(SId)
from sc
group by CId
