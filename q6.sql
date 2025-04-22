select distinct m.name 
from members m inner join memberInKnesset mik on m.uid = mik.uid
where mik.party = 'Mapai' and mik.number in (select distinct number 
                                            from memberInKnesset 
                                            where uid = (select uid 
                                                        from members 
                                                        where name = 'David Ben-Gurion')
                                            and party = 'Mapai')
group by m.uid, m.name 
having count(distinct mik.number) = (select count(distinct number)
                                    from memberInKnesset 
                                    where uid =(select distinct uid 
                                                from members 
                                                where name = 'David Ben-Gurion') 
                                                and party = 'Mapai')
order by m.name;