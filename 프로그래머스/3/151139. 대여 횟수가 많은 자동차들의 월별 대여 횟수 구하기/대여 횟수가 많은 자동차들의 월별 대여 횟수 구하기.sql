# CAR_RENTAL_COMPANY_RENTAL_HISTORY
## HISTORY_ID, CAR_ID, START_DATE, END_DATE

SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
                 GROUP BY 1
                HAVING COUNT(CAR_ID) >= 5)
                AND START_DATE BETWEEN "2022-08-01" AND '2022-10-31'
GROUP BY 1, 2
ORDER BY 1, 2 DESC;