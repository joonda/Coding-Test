# ANIMAL_INS
## ANIMAL_ID(KEY), ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE
# ANIMAL_OUTS
## ANIMAL_ID(KEY), ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME
SELECT I.ANIMAL_ID AS ANIMAL_ID, I.NAME AS NAME FROM ANIMAL_INS AS I
JOIN ANIMAL_OUTS AS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME