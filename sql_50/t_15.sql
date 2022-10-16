# 按各科成绩进行排序，并显示排名， Score 重复时保留名次空缺

select c.cname,
       sc.score,
       rank() over (partition by c.Cname order by sc.score)
from SC,
     Course c
where sc.CId = c.CId

# 按各科成绩进行排序，并显示排名， Score 重复时合并名次

select c.cname,
       sc.score,
       dense_rank() over (partition by c.Cname order by sc.score)
from SC,
     Course c
where sc.CId = c.CId
