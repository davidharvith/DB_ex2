select distinct m.name, mik.party
from members m inner join memberInKnesset mik on m.uid = mik.uid
where mik.number = 1
order by m.name, mik.party;