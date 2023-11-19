# ANIMAL_INS
# ANIMAL_OUTS

SELECT o.ANIMAL_ID, o.NAME FROM ANIMAL_OUTS as o, ANIMAL_INS as i
WHERE not o.animal_id in (select i.animal_id from animal_ins i)
group by 1
order by 1