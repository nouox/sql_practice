# 查询" 01 "课程比" 02 "课程成绩高的学生的信息及课程分数

select s.*, t.Score_01, t.Score_02
from
    (select SId, sc1.score as 'Score_01', sc2.score as 'Score_02'
    from
        (select * from SC where CId = '01') sc1
            left join
        (select * from SC where CId = '02') sc2
            using (SId)
    where sc2.score is not null and sc1.score < sc2.score) t
    left join Student s using (SId)

# +------+--------+---------------------+------+----------+----------+
# | SId  | Sname  | Sage                | Ssex | Score_01 | Score_02 |
# +------+--------+---------------------+------+----------+----------+
# | 01   | 赵雷    | 1990-01-01 00:00:00 | 男   |     80.0 |     90.0 |
# | 05   | 周梅    | 1991-12-01 00:00:00 | 女   |     76.0 |     87.0 |
# +------+--------+---------------------+------+----------+----------+
