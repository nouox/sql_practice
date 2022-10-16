# 查询不及格的课程

select SId, CId
from SC
where score<60
