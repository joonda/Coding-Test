# REST_INFO
select FOOD_TYPE, REST_ID, REST_NAME, FAVORITES from rest_info
where (FOOD_TYPE, FAVORITES) IN (SELECT FOOD_TYPE, MAX(FAVORITES) FROM REST_INFO GROUP BY FOOD_TYPE)
ORDER BY FOOD_TYPE DESC;