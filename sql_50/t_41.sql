# 按照出生日期来算，当前月日 < 出生年月的月日则，年龄减一

select
    sid,
    timestampdiff(year, Sage, now())
from Student
