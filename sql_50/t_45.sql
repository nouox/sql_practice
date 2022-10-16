# 查询下月过生日的学生

select SId
from Student
where month(Sage)=if(month(now())=12, 1, month(now())+1)
