select distinct m.name 
from members m inner join memberInKnesset mik on m.uid = mik.uid 
where m.birthPlace ='Jerusalem' 
group by m.name 
having count(m.name) = 1
order by m.name;

select distinct m.name 
from members m inner join
            (select mik.uid 
            from memberInKnesset mik 
            group by mik.uid 
            having count(mik.number) = 1) t 
on m.uid = t.uid where m.birthPlace ='Jerusalem'
 order by m.name;