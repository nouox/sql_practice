# 查询每门功成绩最好的前两名

select SId, cid
from (
    select
    sid,
    cid,
    score,
    row_number() over (partition by CId order by score desc) rnk
    from SC
) t
where rnk<=2
