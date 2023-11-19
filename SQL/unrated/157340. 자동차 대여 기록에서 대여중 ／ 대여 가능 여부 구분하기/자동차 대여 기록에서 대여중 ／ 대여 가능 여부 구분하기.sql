#car_rental_company_rental_history
#history_id, car_id, start_date, end_date
select car_id,
    case
        when max('2022-10-16' between start_date AND end_date) THEN '대여중'
        else '대여 가능'
    end as AVAILABILITY
from car_rental_company_rental_history
GROUP BY CAR_ID
ORDER BY CAR_ID DESC

