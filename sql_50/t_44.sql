# 查询本月过生日的学生

select SId
from Student
where month(Sage)=month(now())
