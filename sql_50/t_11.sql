# 查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩

select SId,Sname,avg
from Student right join (
    select SId,avg(score) avg
    from SC right join (
        select SId
        from (select * from SC where score<60) t
        group by t.SId
        having count(*)>=2
    ) t using(SId)
    group by SId
) t1 using(SId);

# +------+--------+----------+
# | SId  | Sname  | avg      |
# +------+--------+----------+
# | 04   | 李云    | 33.33333 |
# | 06   | 吴兰    | 32.50000 |
# +------+--------+----------+
