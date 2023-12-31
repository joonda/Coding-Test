# ANIMAL_OUTS
## ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME

WITH RECURSIVE CTE AS(
    SELECT 0 AS NUM
    UNION ALL
    SELECT NUM+1 FROM CTE
    WHERE NUM < 23
)

SELECT CTE.NUM, IFNULL(ANIMAL_OUTS.COUNT, 0) AS COUNT FROM CTE
LEFT JOIN (
SELECT DATE_FORMAT(DATETIME, '%H') AS HOUR, COUNT(*) AS COUNT FROM ANIMAL_OUTS
    GROUP BY 1
) AS ANIMAL_OUTS ON CTE.NUM = ANIMAL_OUTS.HOUR
ORDER BY 1