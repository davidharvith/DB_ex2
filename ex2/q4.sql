select distinct m.name 
from members m inner join memberInKnesset mik on m.uid = mik.uid 
where mik.number in (23,24) and m.gender = 'female' and not m.occupation ='politician'
group by  m.name 
having count(distinct mik.number) = 2
order by m.name;
