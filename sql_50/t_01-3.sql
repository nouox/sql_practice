# 查询不存在" 01 "课程但存在" 02 "课程的情况

select s.*, t.Score_01, t.Score_02
from
    (select SId, sc1.score as 'Score_01', sc2.score as 'Score_02'
    from
        (select * from SC where CId = '02') sc2
            left join
        (select * from SC where CId = '01') sc1
            using (SId)
    where sc1.score is null) t
    left join Student s using (SId);

# +------+--------+---------------------+------+----------+----------+
# | SId  | Sname  | Sage                | Ssex | Score_01 | Score_02 |
# +------+--------+---------------------+------+----------+----------+
# | 07   | 郑竹    | 1989-01-01 00:00:00 | 女   |     NULL |     89.0 |
# +------+--------+---------------------+------+----------+----------+
