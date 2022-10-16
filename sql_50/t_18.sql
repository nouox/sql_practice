# 查询各科成绩前三名的记录

select Cname, SId, score, rnk
from (select c.Cname,
             sc.SId,
             sc.score,
             rank() over (partition by sc.CId order by score desc) rnk
      from SC,
           Course c
      where sc.CId = c.CId) t
where rnk <= 3
