# 查询和" 01 "号的同学学习的课程完全相同的其他同学的信息

select *
from Student right join (
    select distinct SId
    from SC s1
    where not exists(
        select * from
        (select SId,CId from SC s2 where s1.SId=s2.SId) t1
        right outer join
        (select CId from SC s3 where s3.SId='01') t2
        on t1.CId=t2.CId
        where t1.CId is null
    ) and SId<>'01' ) t using(Sid);

# +------+--------+---------------------+------+
# | SId  | Sname  | Sage                | Ssex |
# +------+--------+---------------------+------+
# | 02   | 钱电    | 1990-12-21 00:00:00 | 男   |
# | 03   | 孙风    | 1990-12-20 00:00:00 | 男   |
# | 04   | 李云    | 1990-12-06 00:00:00 | 男   |
# +------+--------+---------------------+------+
