# 查询同名同性学生名单，并统计同名人数

select
    Sname,
    Ssex,
    count(SId) cnt
from Student
group by Sname, Ssex
having cnt>1
