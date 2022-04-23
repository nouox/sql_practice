# 查询平均成绩大于等于 60 分的同学的学生编号和学生姓名和平均成绩

select SId, Sname, avg_score
from
    (select SId, avg(score) as avg_score from SC group by SId) t
    left join Student using (SId)
where avg_score >= 60;

# +------+--------+-----------+
# | SId  | Sname  | avg_score |
# +------+--------+-----------+
# | 01   | 赵雷    |  89.66667 |
# | 02   | 钱电    |  70.00000 |
# | 03   | 孙风    |  80.00000 |
# | 05   | 周梅    |  81.50000 |
# | 07   | 郑竹    |  93.50000 |
# +------+--------+-----------+
