select distinct mik.number, m.name 
from members m inner join memberInKnesset mik on m.uid = mik.uid
where (mik.number, m.birthYear) in (select distinct mik2.number, min(m2.birthYear)
                                     from memberInKnesset mik2 
                                     inner join members m2 on mik2.uid = m2.uid 
                                     group by mik2.number) 
order by mik.number, m.name;