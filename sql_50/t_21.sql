# 查询男生、女生人数

select
    Ssex,
    count(Ssex) cnt
from Student
group by Ssex
