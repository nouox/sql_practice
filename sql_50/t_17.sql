# 统计各科成绩各分数段人数：课程编号，课程名称，[100-85]，[85-70]，[70-60]，[60-0] 及所占百分比

select
    sc.cid,
    c.Cname,
    sum(if(score between 85 and 100, 1, 0)) `100-85_cnt`,
    sum(if(score between 85 and 100, 1, 0))/count(score)*100 `100-85_per`,
    sum(if(score between 70 and 84, 1, 0)) `84-70_cnt`,
    sum(if(score between 70 and 84, 1, 0))/count(score)*100 `84-70_per`,
    sum(if(score between 60 and 69, 1, 0)) `69-60_cnt`,
    sum(if(score between 60 and 69, 1, 0))/count(score)*100 `69-60_per`,
    sum(if(score between 0 and 59, 1, 0)) `59-0_cnt`,
    sum(if(score between 0 and 59, 1, 0))/count(score)*100 `59-0_per`
from sc, Course c
where sc.CId=c.CId
group by sc.cid, c.Cname
