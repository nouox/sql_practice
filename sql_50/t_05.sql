# 查询「李」姓老师的数量

select count(*)
from Teacher
where Tname like '李%';

# +----------+
# | count(*) |
# +----------+
# |        1 |
# +----------+
