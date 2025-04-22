select distinct m.name
from members m
where birthYear>1970 and m.educatedAt = 'Hebrew University of Jerusalem'
order by m.name;
