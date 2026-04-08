{{
  config(
    materialized = 'table'
    )
}}
Select
ticket_no
,flight_id
,fare_conditions
,amount
,boarding_no
,seat_no
from {{ ref('stg_flights__boarding_passes') }}
left join {{ ref('stg_flights__boarding_passes') }}
USING ticket_no
AND flight_id