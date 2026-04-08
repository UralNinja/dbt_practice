{{
  config(
    materialized = 'table',
    )
}}
Select
ticket_no
,flight_id
,fare_conditions
,amount
from {{ source('demo_scr', 'ticket_flights') }}
