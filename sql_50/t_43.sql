# 查询下周过生日的学生

select SId
from Student
where week(now())=if(week(Sage)=52, 1, week(Sage)+1)
