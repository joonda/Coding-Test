# animal_ins 
# animal_id, animal_type, datetime, intake_condition, name, sex_upon_intake
select ANIMAL_ID, NAME, 
if (SEX_UPON_INTAKE like '%Neutered%' or SEX_UPON_INTAKE like '%Spayed%', 'O', 'X' ) as 중성화 
from animal_ins
order by animal_id;