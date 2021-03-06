# 查询各科成绩最高分、最低分和平均分，以如下形式显示：
# 课程 ID，课程 name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
# 及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90
# 要求输出课程号和选修人数，查询结果按人数降序排列，若人数相同，按课程号升序排列

select CId'课程ID',Cname'课程名',max'最高分',min'最低分',avg'平均分',c1'及格率',c2'中等率',c3'优良率',c4'优秀率'
from Course right join (
    select CId,
       max(score) max,
       min(score) min,
       avg(score) avg,
       count(score>=60 or null)/count(score) c1,
       count(score between 70 and 79 or null)/count(score) c2,
       count(score between 80 and 89 or null)/count(score) c3,
       count(score>=90 or null)/count(score) c4
    from SC
    group by CId
) t using(CId);

+----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| 课程ID   | 课程名    | 最高分    | 最低分    | 平均分    | 及格率    | 中等率    | 优良率    | 优秀率    |
+----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
| 01       | 语文      |      80.0 |      31.0 |  64.50000 |    0.6667 |    0.3333 |    0.3333 |    0.0000 |
| 02       | 数学      |      90.0 |      30.0 |  72.66667 |    0.8333 |    0.0000 |    0.5000 |    0.1667 |
| 03       | 英语      |      99.0 |      20.0 |  68.50000 |    0.6667 |    0.0000 |    0.3333 |    0.3333 |
+----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+-----------+
