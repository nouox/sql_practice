# 查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩

select sid, cid, score
from SC
where SId in (
    select distinct sc1.SId
    from sc sc1, sc sc2
    where sc1.CId<>sc2.CId and sc1.score=sc2.score and sc1.SId=sc2.SId
    );
