select distinct m.name, mik.number 
from members m inner join memberInKnesset mik on m.uid= mik.uid 
inner join knessets k on mik.number = k.number 
where mik.party in ('Likud', 'Meretz') and k.startYear - m.birthYear > 70 
order by m.name, mik.number;