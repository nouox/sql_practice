# 查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩(没成绩的显示为 null)

select SId, Sname, Course_Count, Score_Sum
from
    (select SId, count(CId) 'Course_Count', sum(score) as 'Score_Sum' from SC group by SId) t
    right join Student using (SId);

# +------+--------+--------------+-----------+
# | SId  | Sname  | Course_Count | Score_Sum |
# +------+--------+--------------+-----------+
# | 01   | 赵雷    |            3 |     269.0 |
# | 02   | 钱电    |            3 |     210.0 |
# | 03   | 孙风    |            3 |     240.0 |
# | 04   | 李云    |            3 |     100.0 |
# | 05   | 周梅    |            2 |     163.0 |
# | 06   | 吴兰    |            2 |      65.0 |
# | 07   | 郑竹    |            2 |     187.0 |
# | 09   | 张三    |         NULL |      NULL |
# | 10   | 李四    |         NULL |      NULL |
# | 11   | 李四    |         NULL |      NULL |
# | 12   | 赵六    |         NULL |      NULL |
# | 13   | 孙七    |         NULL |      NULL |
# +------+--------+--------------+-----------+
