# 查询本周过生日的学生

select SId
from Student
where week(now())=week(Sage)
