# 查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列

select
    cid,
    avg(score) AvgScore
from SC
group by CId
order by AvgScore desc, CId asc
