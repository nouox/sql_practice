# 查询学过「张三」老师授课的同学的信息

select *
from
    (select SId
    from SC
    where CId = (
        select CId
        from Course
        where TId = (select TId from Teacher where Tname = '张三'))) t
    left join Student using (SId);

# +------+--------+---------------------+------+
# | SId  | Sname  | Sage                | Ssex |
# +------+--------+---------------------+------+
# | 01   | 赵雷    | 1990-01-01 00:00:00 | 男   |
# | 02   | 钱电    | 1990-12-21 00:00:00 | 男   |
# | 03   | 孙风    | 1990-12-20 00:00:00 | 男   |
# | 04   | 李云    | 1990-12-06 00:00:00 | 男   |
# | 05   | 周梅    | 1991-12-01 00:00:00 | 女   |
# | 07   | 郑竹    | 1989-01-01 00:00:00 | 女   |
# +------+--------+---------------------+------+
