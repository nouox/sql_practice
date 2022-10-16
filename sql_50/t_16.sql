# 查询学生的总成绩，并进行排名，总分重复时保留名次空缺

select sid,
       sum(score) SumScore,
       row_number() over (order by sum(score) desc) as rnk
from SC
group by sid
order by SumScore desc

# 查询学生的总成绩，并进行排名，总分重复时不保留名次空缺

select sid,
       sum(score) SumScore,
       rank() over (order by sum(score) desc) as rnk
from SC
group by sid
order by SumScore desc
