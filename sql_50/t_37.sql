# 统计每门课程的学生选修人数（超过 5 人的课程才统计）

select
    cid,
    count(sid) cnt
from SC
group by CId
having cnt>5
