# 查询存在" 01 "课程但可能不存在" 02 "课程的情况(不存在时显示为 null )

select s.*, t.Score_01, t.Score_02
from
    (select SId, sc1.score as 'Score_01', sc2.score as 'Score_02'
    from
        (select * from SC where CId = '01') sc1
            left join
        (select * from SC where CId = '02') sc2
            using (SId)
    where sc2.score is null) t
    left join Student s using (SId);

# +------+--------+---------------------+------+----------+----------+
# | SId  | Sname  | Sage                | Ssex | Score_01 | Score_02 |
# +------+--------+---------------------+------+----------+----------+
# | 06   | 吴兰    | 1992-01-01 00:00:00 | 女   |     31.0 |     NULL |
# +------+--------+---------------------+------+----------+----------+
