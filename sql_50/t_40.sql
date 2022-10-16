# 查询各学生的年龄，只按年份来算

select
    sid,
    year(now())-year(Sage)
from Student
