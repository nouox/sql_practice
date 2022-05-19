# 查询没学过"张三"老师讲授的任一门课程的学生姓名

select Sname from Student where SId not in (
    select SId from SC where CId in (
        select CId from Course where TId=(
            select TId from Teacher where Tname='张三')));

# +--------+
# | Sname  |
# +--------+
# | 吴兰    |
# | 张三    |
# | 李四    |
# | 李四    |
# | 赵六    |
# | 孙七    |
# +--------+
